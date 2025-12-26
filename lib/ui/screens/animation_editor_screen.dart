import 'dart:ui' as ui;
import 'dart:math' as math;

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../../app.dart';
import '../../data/models.dart';
import '../../engine/renderer.dart';
import 'preview_screen.dart';

enum _MenuAction {
  toggleInterpolate,
  toggleOnion,
  setTotalFrames,
  exportBundle,
}

class AnimationEditorScreen extends StatefulWidget {
  final Project project;
  final Sequence sequence;

  const AnimationEditorScreen({
    super.key,
    required this.project,
    required this.sequence,
  });

  @override
  State<AnimationEditorScreen> createState() => _AnimationEditorScreenState();
}

class _AnimationEditorScreenState extends State<AnimationEditorScreen> with SingleTickerProviderStateMixin {
  static const _uuid = Uuid();

  late Project _project;
  late Sequence _seq;

  late final Ticker _ticker;
  Duration _lastTick = Duration.zero;
  double _t = 1.0; // 1-based frame timeline
  bool _playing = false;

  ui.Image? _frame;
  int _lastRenderedFrame = -1;
  String? _lastRenderError;

  int get _totalFrames => _seq.setting.totalFrames.clamp(1, 1000000);

  @override
  void initState() {
    super.initState();
    _project = widget.project;
    _seq = widget.sequence;
    _ticker = createTicker(_onTick);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _refreshFromRepo();
      _renderFrame();
    });
  }

  @override
  void dispose() {
    _ticker.dispose();
    _frame?.dispose();
    super.dispose();
  }

  void _onTick(Duration elapsed) {
    if (!_playing) return;
    if (_lastTick == Duration.zero) {
      _lastTick = elapsed;
      return;
    }

    final dt = elapsed - _lastTick;
    _lastTick = elapsed;
    final dsec = dt.inMicroseconds / 1e6;
    final df = dsec * _seq.setting.fps * _seq.setting.playbackRate;

    _t += df;
    if (_t > _totalFrames) _t = 1.0;

    final cur = _t.floor();
    if (cur != _lastRenderedFrame) {
      _renderFrame();
      _lastRenderedFrame = cur;
    }
  }

  void _refreshFromRepo() {
    if (!mounted) return;
    final repo = context.read<AppState>().repo;
    final p = repo.projects.firstWhere(
      (p) => p.id == widget.project.id,
      orElse: () => widget.project,
    );
    final s = p.sequences.firstWhere(
      (s) => s.id == widget.sequence.id,
      orElse: () => widget.sequence,
    );
    setState(() {
      _project = p;
      _seq = s;
      _t = _t.clamp(1.0, _totalFrames.toDouble());
    });
  }

  Future<void> _renderFrame() async {
    final repo = context.read<AppState>().repo;

    final w0 = math.max(1.0, _seq.setting.width.toDouble());
    final h0 = math.max(1.0, _seq.setting.height.toDouble());
    final q = _seq.setting.previewDownscale.clamp(0.5, 1.0);
    final minW = math.min(320.0, w0);
    final minH = math.min(180.0, h0);
    final w = (w0 * q).clamp(minW, w0);
    final h = (h0 * q).clamp(minH, h0);

    final bgPath = _seq.setting.backgroundImage;
    final luma = bgPath == null ? null : repo.imageCenterLuma[bgPath];

    try {
      final img = Renderer.paintFrame(
        seq: _seq,
        models: repo.models,
        images: repo.images,
        tFrame: _t,
        size: ui.Size(w, h),
        interpolate: _seq.setting.interpolate,
        showHelperJoints: false,
        drawGrid: false,
        bgCenterLuma: luma,
      );

      if (!mounted) {
        img.dispose();
        return;
      }
      setState(() {
        _frame?.dispose();
        _frame = img;
        _lastRenderError = null;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _frame?.dispose();
        _frame = null;
        _playing = false;
        _lastTick = Duration.zero;
      });
      _ticker.stop();
      final msg = e.toString();
      if (_lastRenderError != msg) {
        _lastRenderError = msg;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Render failed: $msg')),
        );
      }
    }
  }

  Future<void> _saveSeq(Sequence newSeq) async {
    final repo = context.read<AppState>().repo;
    final projIdx = repo.projects.indexWhere((p) => p.id == _project.id);
    final curProj = projIdx >= 0 ? repo.projects[projIdx] : _project;

    final newSeqs = curProj.sequences.map((s) => s.id == newSeq.id ? newSeq : s).toList();
    final updated = Project(
      id: curProj.id,
      name: curProj.name,
      sequences: newSeqs,
      lastOpened: curProj.lastOpened,
      favorite: curProj.favorite,
    );

    await repo.upsertProject(updated);

    if (!mounted) return;
    setState(() {
      _project = updated;
      _seq = newSeq;
      _t = _t.clamp(1.0, _totalFrames.toDouble());
    });
  }

  Future<void> _addStickman() async {
    final repo = context.read<AppState>().repo;
    if (repo.models['stickman'] == null) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Stickman model is missing.')),
      );
      return;
    }

    final w = math.max(1.0, _seq.setting.width.toDouble());
    final h = math.max(1.0, _seq.setting.height.toDouble());
    final inst = Instance(
      id: _uuid.v4(),
      name: 'Stickman',
      modelId: 'stickman',
      base: Transform2D(pos: Vec2(w * 0.5, h * 0.82)),
    );

    await _saveSeq(_seq.copyWith(instances: [..._seq.instances, inst]));
    await _renderFrame();
  }

  Future<void> _openLayers() async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => _LayersScreen(
          initialSequence: _seq,
          onCommit: (seq) async {
            await _saveSeq(seq);
            await _renderFrame();
          },
        ),
      ),
    );
  }

  void _prevFrame() {
    setState(() {
      _playing = false;
      _lastTick = Duration.zero;
      _ticker.stop();
      _t = (_t.floor() - 1).clamp(1, _totalFrames).toDouble();
    });
    _renderFrame();
  }

  void _nextFrame() {
    setState(() {
      _playing = false;
      _lastTick = Duration.zero;
      _ticker.stop();
      _t = (_t.floor() + 1).clamp(1, _totalFrames).toDouble();
    });
    _renderFrame();
  }

  void _togglePlay() {
    setState(() {
      _playing = !_playing;
      _lastTick = Duration.zero;
    });
    if (_playing) {
      if (!_ticker.isActive) _ticker.start();
    } else {
      _ticker.stop();
    }
  }

  Future<void> _openPreview() async {
    if (_playing) {
      setState(() {
        _playing = false;
        _lastTick = Duration.zero;
      });
      _ticker.stop();
    }
    final repo = context.read<AppState>().repo;
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => PreviewScreen(
          sequence: _seq,
          models: repo.models,
          images: repo.images,
          totalFrames: _totalFrames,
        ),
      ),
    );
  }

  Future<void> _exportBundle() async {
    final repo = context.read<AppState>().repo;
    try {
      final bundle = await repo.exportBundle(_project);
      final savePath = await FilePicker.platform.saveFile(
        dialogTitle: 'Save Animation File',
        fileName: '${_project.name}.sma',
        type: FileType.custom,
        allowedExtensions: const ['sma'],
      );
      if (savePath == null) return;
      await bundle.copy(savePath);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Exported: $savePath')),
      );
    } catch (err) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Export failed: $err')),
      );
    }
  }

  Future<void> _setTotalFrames() async {
    final ctl = TextEditingController(text: _totalFrames.toString());
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Total Frames'),
        content: TextField(
          controller: ctl,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Frames'),
          autofocus: true,
        ),
        actions: [
          TextButton(onPressed: () => Navigator.of(ctx).pop(false), child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.of(ctx).pop(true), child: const Text('OK')),
        ],
      ),
    );
    if (ok != true) return;
    final v = int.tryParse(ctl.text.trim());
    if (v == null) return;
    final frames = v.clamp(1, 1000000);
    await _saveSeq(_seq.copyWith(setting: _seq.setting.copyWith(totalFrames: frames)));
    await _renderFrame();
  }

  Future<void> _handleMenu(_MenuAction action) async {
    switch (action) {
      case _MenuAction.toggleInterpolate:
        await _saveSeq(
          _seq.copyWith(setting: _seq.setting.copyWith(interpolate: !_seq.setting.interpolate)),
        );
        await _renderFrame();
        break;
      case _MenuAction.toggleOnion:
        final enabled = _seq.onion.prevFrames > 0 || _seq.onion.nextFrames > 0;
        final newOnion = enabled ? const OnionSkinSetting(prevFrames: 0, nextFrames: 0) : const OnionSkinSetting();
        await _saveSeq(_seq.copyWith(onion: newOnion));
        await _renderFrame();
        break;
      case _MenuAction.setTotalFrames:
        await _setTotalFrames();
        break;
      case _MenuAction.exportBundle:
        await _exportBundle();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final stageW = math.max(1.0, _seq.setting.width.toDouble());
    final stageH = math.max(1.0, _seq.setting.height.toDouble());

    return Scaffold(
      appBar: AppBar(
        title: Text('Animation: ${_seq.name}'),
        actions: [
          IconButton(
            tooltip: 'Layers',
            icon: const Icon(Icons.layers_outlined),
            onPressed: _openLayers,
          ),
          IconButton(
            tooltip: 'Add stickman',
            icon: const Icon(Icons.person_add_alt_1),
            onPressed: _addStickman,
          ),
          IconButton(
            tooltip: 'Preview',
            icon: const Icon(Icons.slideshow),
            onPressed: _openPreview,
          ),
          PopupMenuButton<_MenuAction>(
            tooltip: 'More',
            onSelected: _handleMenu,
            itemBuilder: (_) => [
              PopupMenuItem(
                value: _MenuAction.toggleInterpolate,
                child: Text(_seq.setting.interpolate ? 'Interpolate: ON' : 'Interpolate: OFF'),
              ),
              PopupMenuItem(
                value: _MenuAction.toggleOnion,
                child: Text((_seq.onion.prevFrames > 0 || _seq.onion.nextFrames > 0) ? 'Onion Skin: ON' : 'Onion Skin: OFF'),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(value: _MenuAction.setTotalFrames, child: Text('Set Total Frames...')),
              const PopupMenuDivider(),
              const PopupMenuItem(value: _MenuAction.exportBundle, child: Text('Export (.sma)...')),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: AspectRatio(
                      aspectRatio: stageW / stageH,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: DecoratedBox(
                          decoration: const BoxDecoration(color: Color(0xFF222222)),
                          child: _frame == null
                              ? const Center(child: CircularProgressIndicator())
                              : RawImage(image: _frame, fit: BoxFit.contain),
                        ),
                      ),
                    ),
                  ),
                ),
                if (_seq.instances.isEmpty)
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: FilledButton.icon(
                      onPressed: _addStickman,
                      icon: const Icon(Icons.add),
                      label: const Text('Add Stickman to start'),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: SizedBox(
          height: 72,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  tooltip: 'Prev frame',
                  icon: const Icon(Icons.chevron_left),
                  onPressed: _prevFrame,
                ),
                IconButton(
                  tooltip: _playing ? 'Pause' : 'Play',
                  icon: Icon(_playing ? Icons.pause : Icons.play_arrow),
                  onPressed: _togglePlay,
                ),
                IconButton(
                  tooltip: 'Next frame',
                  icon: const Icon(Icons.chevron_right),
                  onPressed: _nextFrame,
                ),
                const SizedBox(width: 8),
                Text('${_t.round()} / $_totalFrames'),
                const SizedBox(width: 12),
                Expanded(
                  child: Slider(
                    min: 1,
                    max: _totalFrames.toDouble().clamp(1, 1000000),
                    value: _t.clamp(1.0, _totalFrames.toDouble()),
                    onChanged: (v) {
                      setState(() {
                        _playing = false;
                        _lastTick = Duration.zero;
                        _ticker.stop();
                        _t = v;
                      });
                      _renderFrame();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum _AddLayerKind {
  stickman,
  model,
  image,
  sprite,
}

class _LayersScreen extends StatefulWidget {
  final Sequence initialSequence;
  final Future<void> Function(Sequence) onCommit;

  const _LayersScreen({
    required this.initialSequence,
    required this.onCommit,
  });

  @override
  State<_LayersScreen> createState() => _LayersScreenState();
}

class _LayersScreenState extends State<_LayersScreen> {
  static const _uuid = Uuid();

  late Sequence _seq = widget.initialSequence;
  String? _selectedId;
  bool _busy = false;

  int get _count => _seq.instances.length;

  String _uniqueLayerName(String base) {
    final trimmed = base.trim().isEmpty ? 'Layer' : base.trim();
    if (!_seq.instances.any((i) => i.name == trimmed)) return trimmed;
    int n = 2;
    while (_seq.instances.any((i) => i.name == '$trimmed $n')) {
      n++;
    }
    return '$trimmed $n';
  }

  Future<void> _commit(Sequence next, {String? selectId}) async {
    setState(() => _busy = true);
    try {
      await widget.onCommit(next);
      if (!mounted) return;
      setState(() {
        _seq = next;
        if (selectId != null) {
          _selectedId = selectId;
        } else if (_selectedId != null && !_seq.instances.any((i) => i.id == _selectedId)) {
          _selectedId = null;
        }
      });
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Save failed: $e')),
      );
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<_AddLayerKind?> _pickAddKind() async {
    return showDialog<_AddLayerKind>(
      context: context,
      builder: (ctx) => SimpleDialog(
        title: const Text('Add Layer'),
        children: [
          SimpleDialogOption(
            onPressed: () => Navigator.of(ctx).pop(_AddLayerKind.stickman),
            child: const ListTile(
              leading: Icon(Icons.person_add_alt_1),
              title: Text('Stickman'),
            ),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.of(ctx).pop(_AddLayerKind.model),
            child: const ListTile(
              leading: Icon(Icons.category_outlined),
              title: Text('From model library'),
            ),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.of(ctx).pop(_AddLayerKind.image),
            child: const ListTile(
              leading: Icon(Icons.image_outlined),
              title: Text('Import image'),
            ),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.of(ctx).pop(_AddLayerKind.sprite),
            child: const ListTile(
              leading: Icon(Icons.collections_outlined),
              title: Text('Import sprite (multiple images)'),
            ),
          ),
        ],
      ),
    );
  }

  Instance _newInstanceForModel(Model model) {
    final stageW = math.max(1.0, _seq.setting.width.toDouble());
    final stageH = math.max(1.0, _seq.setting.height.toDouble());

    final imgAtt = model.attachments.where((a) => a.type == PrimType.image).firstOrNull;
    if (imgAtt != null) {
      final minX = math.min(imgAtt.a.x, imgAtt.b.x);
      final maxX = math.max(imgAtt.a.x, imgAtt.b.x);
      final minY = math.min(imgAtt.a.y, imgAtt.b.y);
      final maxY = math.max(imgAtt.a.y, imgAtt.b.y);
      final w = (maxX - minX).abs().clamp(1.0, double.infinity);
      final h = (maxY - minY).abs().clamp(1.0, double.infinity);

      final maxW = stageW * 0.9;
      final maxH = stageH * 0.9;
      final scale = math.min(1.0, math.min(maxW / w, maxH / h));
      final cx = (minX + maxX) * 0.5;
      final cy = (minY + maxY) * 0.5;
      final pos = Vec2(stageW * 0.5 - cx * scale, stageH * 0.5 - cy * scale);
      return Instance(
        id: _uuid.v4(),
        name: _uniqueLayerName(model.name),
        modelId: model.id,
        base: Transform2D(pos: pos, scale: Vec2(scale, scale)),
      );
    }

    // Generic model: place at center.
    return Instance(
      id: _uuid.v4(),
      name: _uniqueLayerName(model.name),
      modelId: model.id,
      base: Transform2D(pos: Vec2(stageW * 0.5, stageH * 0.5)),
    );
  }

  Future<void> _addLayer() async {
    if (_busy) return;

    final kind = await _pickAddKind();
    if (kind == null) return;

    final repo = context.read<AppState>().repo;

    try {
      switch (kind) {
        case _AddLayerKind.stickman:
          {
            final model = repo.models['stickman'];
            if (model == null) throw Exception('Stickman model is missing.');
            final stageW = math.max(1.0, _seq.setting.width.toDouble());
            final stageH = math.max(1.0, _seq.setting.height.toDouble());
            final inst = Instance(
              id: _uuid.v4(),
              name: _uniqueLayerName('Stickman'),
              modelId: 'stickman',
              base: Transform2D(pos: Vec2(stageW * 0.5, stageH * 0.82)),
            );
            await _commit(_seq.copyWith(instances: [..._seq.instances, inst]), selectId: inst.id);
            break;
          }
        case _AddLayerKind.model:
          {
            final picked = await _pickModelFromLibrary(repo.models.values.toList());
            if (picked == null) return;
            final inst = _newInstanceForModel(picked);
            await _commit(_seq.copyWith(instances: [..._seq.instances, inst]), selectId: inst.id);
            break;
          }
        case _AddLayerKind.image:
          {
            final res = await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowedExtensions: const ['png', 'jpg', 'jpeg', 'webp'],
            );
            final pth = res?.files.singleOrNull?.path;
            if (pth == null) return;
            final model = await repo.createImageModel(pth);
            final inst = _newInstanceForModel(model);
            await _commit(_seq.copyWith(instances: [..._seq.instances, inst]), selectId: inst.id);
            break;
          }
        case _AddLayerKind.sprite:
          {
            final res = await FilePicker.platform.pickFiles(
              allowMultiple: true,
              type: FileType.custom,
              allowedExtensions: const ['png', 'jpg', 'jpeg', 'webp'],
            );
            final paths = (res?.files ?? const <PlatformFile>[])
                .map((f) => f.path)
                .whereType<String>()
                .toList();
            if (paths.isEmpty) return;
            final model = await repo.createSpriteModel(paths);
            final inst = _newInstanceForModel(model);
            await _commit(_seq.copyWith(instances: [..._seq.instances, inst]), selectId: inst.id);
            break;
          }
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Add layer failed: $e')));
    }
  }

  Future<Model?> _pickModelFromLibrary(List<Model> models) async {
    if (models.isEmpty) return null;
    models.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));

    return showDialog<Model>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Select model'),
        content: SizedBox(
          width: 420,
          height: 420,
          child: ListView.separated(
            itemCount: models.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (ctx, i) {
              final m = models[i];
              return ListTile(
                title: Text(m.name.isEmpty ? m.id : m.name),
                subtitle: Text(m.id == 'stickman' ? 'Built-in' : m.id),
                onTap: () => Navigator.of(ctx).pop(m),
              );
            },
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.of(ctx).pop(null), child: const Text('Cancel')),
        ],
      ),
    );
  }

  Future<void> _renameLayer(String id) async {
    final inst = _seq.instances.where((i) => i.id == id).firstOrNull;
    if (inst == null) return;
    final ctl = TextEditingController(text: inst.name);
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Rename layer'),
        content: TextField(
          controller: ctl,
          autofocus: true,
          decoration: const InputDecoration(labelText: 'Name'),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.of(ctx).pop(false), child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.of(ctx).pop(true), child: const Text('OK')),
        ],
      ),
    );
    if (ok != true) return;
    final name = ctl.text.trim();
    if (name.isEmpty) return;
    final newInsts = _seq.instances.map((i) => i.id == id ? i.copyWith(name: name) : i).toList();
    await _commit(_seq.copyWith(instances: newInsts));
  }

  Future<void> _deleteLayer(String id) async {
    final inst = _seq.instances.where((i) => i.id == id).firstOrNull;
    if (inst == null) return;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete layer?'),
        content: Text('Delete "${inst.name}"?'),
        actions: [
          TextButton(onPressed: () => Navigator.of(ctx).pop(false), child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.of(ctx).pop(true), child: const Text('Delete')),
        ],
      ),
    );
    if (ok != true) return;
    final newInsts = List<Instance>.from(_seq.instances)..removeWhere((i) => i.id == id);
    await _commit(_seq.copyWith(instances: newInsts));
  }

  Future<void> _toggleVisible(String id) async {
    final newInsts = _seq.instances
        .map((i) => i.id == id ? i.copyWith(visible: !i.visible) : i)
        .toList();
    await _commit(_seq.copyWith(instances: newInsts));
  }

  Future<void> _toggleLocked(String id) async {
    final newInsts = _seq.instances
        .map((i) => i.id == id ? i.copyWith(locked: !i.locked) : i)
        .toList();
    await _commit(_seq.copyWith(instances: newInsts));
  }

  Future<void> _reorder(int oldIndex, int newIndex) async {
    if (oldIndex < 0 || oldIndex >= _count) return;
    final list = List<Instance>.from(_seq.instances);
    int dst = newIndex;
    if (dst > oldIndex) dst -= 1;
    final item = list.removeAt(oldIndex);
    list.insert(dst.clamp(0, list.length), item);
    await _commit(_seq.copyWith(instances: list));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layers ($_count)'),
        actions: [
          IconButton(
            tooltip: 'Add layer',
            icon: const Icon(Icons.add),
            onPressed: _busy ? null : _addLayer,
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(height: 1),
          Expanded(
            child: _count == 0
                ? const Center(child: Text('No layers yet. Add one to start.'))
                : ReorderableListView.builder(
                    itemCount: _count,
                    onReorder: _reorder,
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    itemBuilder: (ctx, index) {
                      final inst = _seq.instances[index];
                      final visible = inst.visible;
                      final locked = inst.locked;
                      final selected = inst.id == _selectedId;
                      final title = inst.name.isEmpty ? 'Layer ${index + 1}' : inst.name;
                      final subtitle = inst.modelId == 'stickman' ? 'stickman' : inst.modelId;

                      return Card(
                        key: ValueKey(inst.id),
                        color: selected ? Theme.of(context).colorScheme.primaryContainer.withOpacity(0.35) : null,
                        child: ListTile(
                          onTap: () => setState(() => _selectedId = inst.id),
                          title: Text(title),
                          subtitle: Text(subtitle),
                          leading: ReorderableDragStartListener(
                            index: index,
                            child: const Icon(Icons.drag_handle),
                          ),
                          trailing: Wrap(
                            spacing: 4,
                            children: [
                              IconButton(
                                tooltip: visible ? 'Hide' : 'Show',
                                icon: Icon(visible ? Icons.visibility : Icons.visibility_off),
                                onPressed: _busy ? null : () => _toggleVisible(inst.id),
                              ),
                              IconButton(
                                tooltip: locked ? 'Unlock' : 'Lock',
                                icon: Icon(locked ? Icons.lock : Icons.lock_open),
                                onPressed: _busy ? null : () => _toggleLocked(inst.id),
                              ),
                              PopupMenuButton<String>(
                                tooltip: 'Layer actions',
                                onSelected: (v) async {
                                  switch (v) {
                                    case 'rename':
                                      await _renameLayer(inst.id);
                                      break;
                                    case 'delete':
                                      await _deleteLayer(inst.id);
                                      break;
                                  }
                                },
                                itemBuilder: (_) => const [
                                  PopupMenuItem(value: 'rename', child: Text('Rename')),
                                  PopupMenuItem(value: 'delete', child: Text('Delete')),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
