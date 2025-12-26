import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:path/path.dart' as path;
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:uuid/uuid.dart';

import '../../app.dart';
import '../../data/models.dart';
import '../../engine/renderer.dart';
import 'preview_screen.dart';

enum _MenuAction {
  toggleInterpolate,
  toggleOnion,
  setTotalFrames,
  preloadFrames,
  clearFrameCache,
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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late Project _project;
  late Sequence _seq;

  late final Ticker _ticker;
  Duration _lastTick = Duration.zero;
  double _t = 1.0; // 1-based frame timeline
  bool _playing = false;

  ui.Image? _frame;
  bool _frameFromCache = false;
  List<ui.Image?>? _frameCache;
  ui.Size? _frameCacheSize;
  bool _preloadingFrames = false;
  int _lastRenderedFrame = -1;
  String? _lastRenderError;
  bool _rendering = false;
  bool _renderQueued = false;

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
    _dropFrameCache();
    if (_frame != null && !_frameFromCache) {
      _frame!.dispose();
    }
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
      _dropFrameCache();
      _project = p;
      _seq = s;
      _t = _t.clamp(1.0, _totalFrames.toDouble());
    });
  }

  ui.Size _previewRenderSize() {
    final w0 = math.max(1.0, _seq.setting.width.toDouble());
    final h0 = math.max(1.0, _seq.setting.height.toDouble());
    final q = _seq.setting.previewDownscale.clamp(0.5, 1.0);
    final minW = math.min(320.0, w0);
    final minH = math.min(180.0, h0);
    final w = (w0 * q).clamp(minW, w0);
    final h = (h0 * q).clamp(minH, h0);
    return ui.Size(w, h);
  }

  void _setDisplayedFrame(ui.Image? next, {required bool fromCache}) {
    if (_frame != null && !_frameFromCache) {
      _frame!.dispose();
    }
    _frame = next;
    _frameFromCache = fromCache;
  }

  void _dropFrameCache() {
    final cache = _frameCache;
    if (cache != null) {
      for (final img in cache) {
        img?.dispose();
      }
    }
    _frameCache = null;
    _frameCacheSize = null;
    if (_frameFromCache) {
      _frame = null;
      _frameFromCache = false;
    }
  }

  Future<void> _renderFrame() async {
    if (_rendering) {
      _renderQueued = true;
      return;
    }
    _rendering = true;

    try {
      final repo = context.read<AppState>().repo;

      final cache = _frameCache;
      if (cache != null && cache.isNotEmpty) {
        final idx = _t.round().clamp(1, cache.length).toInt() - 1;
        final img = cache[idx];
        if (img != null) {
          if (!mounted) return;
          setState(() {
            _setDisplayedFrame(img, fromCache: true);
            _lastRenderError = null;
          });
          return;
        }
      }

      final size = _previewRenderSize();

      final bgPath = _seq.setting.backgroundImage;
      final luma = bgPath == null ? null : repo.imageCenterLuma[bgPath];

      try {
        final img = Renderer.paintFrame(
          seq: _seq,
          models: repo.models,
          images: repo.images,
          tFrame: _t,
          size: size,
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
          _setDisplayedFrame(img, fromCache: false);
          _lastRenderError = null;
        });
      } catch (e) {
        if (!mounted) return;
        setState(() {
          _setDisplayedFrame(null, fromCache: false);
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
    } finally {
      _rendering = false;
      if (_renderQueued) {
        _renderQueued = false;
        if (mounted) unawaited(_renderFrame());
      }
    }
  }

  Future<void> _preloadFrames({bool startPlaybackAfter = false}) async {
    if (_preloadingFrames) return;
    final total = _totalFrames;
    if (total <= 0) return;

    if (total > 500) {
      final ok = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Preload frames?'),
          content: Text('Preloading $total frames may take a while and use a lot of memory.'),
          actions: [
            TextButton(onPressed: () => Navigator.of(ctx).pop(false), child: const Text('Cancel')),
            FilledButton(onPressed: () => Navigator.of(ctx).pop(true), child: const Text('Continue')),
          ],
        ),
      );
      if (ok != true) return;
    }

    if (_playing) {
      setState(() {
        _playing = false;
        _lastTick = Duration.zero;
      });
      _ticker.stop();
    }

    final repo = context.read<AppState>().repo;
    final size = _previewRenderSize();
    final bgPath = _seq.setting.backgroundImage;
    final luma = bgPath == null ? null : repo.imageCenterLuma[bgPath];

    bool cancelRequested = false;
    int done = 0;
    void Function(void Function())? dialogSetState;
    BuildContext? dialogContext;

    unawaited(
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (ctx) {
          dialogContext = ctx;
          return StatefulBuilder(
            builder: (ctx, setDialogState) {
              dialogSetState = setDialogState;
              final frac = total <= 0 ? null : (done / total).clamp(0.0, 1.0);
              return AlertDialog(
                title: const Text('Preloading frames...'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    LinearProgressIndicator(value: frac),
                    const SizedBox(height: 12),
                    Text('$done / $total'),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: cancelRequested
                        ? null
                        : () {
                            cancelRequested = true;
                            setDialogState(() {});
                          },
                    child: Text(cancelRequested ? 'Cancelling...' : 'Cancel'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );

    setState(() {
      _preloadingFrames = true;
      _dropFrameCache();
    });

    final cache = List<ui.Image?>.filled(total, null, growable: false);

    Object? error;
    try {
      for (int frame = 1; frame <= total; frame++) {
        if (!mounted || cancelRequested) break;
        final img = Renderer.paintFrame(
          seq: _seq,
          models: repo.models,
          images: repo.images,
          tFrame: frame.toDouble(),
          size: size,
          interpolate: _seq.setting.interpolate,
          showHelperJoints: false,
          drawGrid: false,
          bgCenterLuma: luma,
        );
        cache[frame - 1] = img;
        done = frame;
        dialogSetState?.call(() {});
        if (frame % 3 == 0) {
          await Future<void>.delayed(Duration.zero);
        }
      }
    } catch (e) {
      error = e;
    }

    try {
      if (dialogContext != null && mounted) {
        Navigator.of(dialogContext!).pop();
      }
    } catch (_) {}

    if (mounted) {
      setState(() {
        _preloadingFrames = false;
      });
    }

    if (!mounted || cancelRequested || error != null) {
      for (final img in cache) {
        img?.dispose();
      }
      if (error != null && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Preload failed: $error')),
        );
      }
      await _renderFrame();
      return;
    }

    setState(() {
      _frameCache = cache;
      _frameCacheSize = size;
    });
    await _renderFrame();

    if (startPlaybackAfter && mounted) {
      setState(() {
        _playing = true;
        _lastTick = Duration.zero;
      });
      if (!_ticker.isActive) _ticker.start();
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
      _dropFrameCache();
      _project = updated;
      _seq = newSeq;
      _t = _t.clamp(1.0, _totalFrames.toDouble());
    });
  }

  void _previewSeq(Sequence newSeq) {
    final newSeqs = _project.sequences.map((s) => s.id == newSeq.id ? newSeq : s).toList();
    setState(() {
      _dropFrameCache();
      _project = Project(
        id: _project.id,
        name: _project.name,
        sequences: newSeqs,
        lastOpened: _project.lastOpened,
        favorite: _project.favorite,
      );
      _seq = newSeq;
      _t = _t.clamp(1.0, _totalFrames.toDouble());
    });
    _renderFrame();
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
    final state = _scaffoldKey.currentState;
    if (state != null && state.hasDrawer) {
      state.openDrawer();
    }
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
    if (_preloadingFrames) return;
    if (_playing) {
      setState(() {
        _playing = false;
        _lastTick = Duration.zero;
      });
      _ticker.stop();
      return;
    }

    if (_frameCache == null) {
      unawaited(_preloadFrames(startPlaybackAfter: true));
      return;
    }

    setState(() {
      _playing = true;
      _lastTick = Duration.zero;
    });
    if (!_ticker.isActive) _ticker.start();
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

      if (Platform.isAndroid || Platform.isIOS) {
        await Share.shareXFiles(
          [XFile(bundle.path)],
          subject: _project.name,
          text: 'Exported from BOKU Animator',
        );
        return;
      }

      String? savePath;
      try {
        savePath = await FilePicker.platform.saveFile(
          dialogTitle: 'Save Animation File',
          fileName: '${_project.name}.sma',
          type: FileType.custom,
          allowedExtensions: const ['sma'],
        );
      } catch (_) {
        // Fallback (e.g., unsupported platforms): share temp file instead.
        await Share.shareXFiles(
          [XFile(bundle.path)],
          subject: _project.name,
          text: 'Exported from BOKU Animator',
        );
        return;
      }

      if (savePath == null) return;
      await bundle.copy(savePath);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Exported: $savePath')));
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
    if (_preloadingFrames) return;
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
      case _MenuAction.preloadFrames:
        await _preloadFrames();
        break;
      case _MenuAction.clearFrameCache:
        setState(() {
          _dropFrameCache();
        });
        await _renderFrame();
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

    Widget stage() {
      return Column(
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
                onPressed: _preloadingFrames ? null : _addStickman,
                icon: const Icon(Icons.add),
                label: const Text('Add Stickman to start'),
              ),
            ),
        ],
      );
    }

    Widget bottomControls({required bool compact, required bool showLayersButton}) {
      final slider = Slider(
        min: 1,
        max: _totalFrames.toDouble().clamp(1, 1000000),
        value: _t.clamp(1.0, _totalFrames.toDouble()),
        onChanged: _preloadingFrames
            ? null
            : (v) {
          setState(() {
            _playing = false;
            _lastTick = Duration.zero;
            _ticker.stop();
            _t = v;
          });
          _renderFrame();
        },
      );

      if (!compact) {
        return SafeArea(
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
                    onPressed: _preloadingFrames ? null : _prevFrame,
                  ),
                  IconButton(
                    tooltip: _playing ? 'Pause' : 'Play',
                    icon: Icon(_playing ? Icons.pause : Icons.play_arrow),
                    onPressed: _preloadingFrames ? null : _togglePlay,
                  ),
                  IconButton(
                    tooltip: 'Next frame',
                    icon: const Icon(Icons.chevron_right),
                    onPressed: _preloadingFrames ? null : _nextFrame,
                  ),
                  const SizedBox(width: 8),
                  Text('${_t.round()} / $_totalFrames'),
                  const SizedBox(width: 12),
                  Expanded(child: slider),
                ],
              ),
            ),
          ),
        );
      }

      return SafeArea(
        top: false,
        child: SizedBox(
          height: 104,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    if (showLayersButton)
                      IconButton(
                        tooltip: 'Layers',
                        icon: const Icon(Icons.layers_outlined),
                        onPressed: _preloadingFrames ? null : _openLayers,
                      ),
                    IconButton(
                      tooltip: 'Prev frame',
                      icon: const Icon(Icons.chevron_left),
                      onPressed: _preloadingFrames ? null : _prevFrame,
                    ),
                    IconButton(
                      tooltip: _playing ? 'Pause' : 'Play',
                      icon: Icon(_playing ? Icons.pause : Icons.play_arrow),
                      onPressed: _preloadingFrames ? null : _togglePlay,
                    ),
                    IconButton(
                      tooltip: 'Next frame',
                      icon: const Icon(Icons.chevron_right),
                      onPressed: _preloadingFrames ? null : _nextFrame,
                    ),
                    const SizedBox(width: 8),
                    Text('${_t.round()} / $_totalFrames'),
                    const Spacer(),
                    IconButton(
                      tooltip: 'Preview',
                      icon: const Icon(Icons.slideshow),
                      onPressed: _preloadingFrames ? null : _openPreview,
                    ),
                  ],
                ),
                Expanded(child: slider),
              ],
            ),
          ),
        ),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth >= 900;
        final compact = constraints.maxWidth < 520;
        final panel = _LayersPanel(
          sequence: _seq,
          showClose: !isWide,
          currentFrame: _t.round().clamp(1, _totalFrames).toInt(),
          onPreview: _previewSeq,
          onCommit: (seq) async {
            await _saveSeq(seq);
            await _renderFrame();
          },
        );

        return Scaffold(
          key: _scaffoldKey,
          drawer: isWide ? null : Drawer(child: SafeArea(child: panel)),
          appBar: AppBar(
            title: Text('Animation: ${_seq.name}'),
            actions: [
              if (!isWide && !compact)
                IconButton(
                  tooltip: 'Layers',
                  icon: const Icon(Icons.layers_outlined),
                  onPressed: _preloadingFrames ? null : _openLayers,
                ),
              if (!compact)
                IconButton(
                  tooltip: 'Add stickman',
                  icon: const Icon(Icons.person_add_alt_1),
                  onPressed: _preloadingFrames ? null : _addStickman,
                ),
              if (!compact)
                IconButton(
                  tooltip: 'Preview',
                  icon: const Icon(Icons.slideshow),
                  onPressed: _preloadingFrames ? null : _openPreview,
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
                    child: Text((_seq.onion.prevFrames > 0 || _seq.onion.nextFrames > 0)
                        ? 'Onion Skin: ON'
                        : 'Onion Skin: OFF'),
                  ),
                  const PopupMenuDivider(),
                  const PopupMenuItem(value: _MenuAction.setTotalFrames, child: Text('Set Total Frames...')),
                  PopupMenuItem(
                    value: _MenuAction.preloadFrames,
                    child: Text(_frameCache == null ? 'Preload Frames...' : 'Rebuild Frame Cache...'),
                  ),
                  if (_frameCache != null)
                    const PopupMenuItem(
                      value: _MenuAction.clearFrameCache,
                      child: Text('Clear Frame Cache'),
                    ),
                  const PopupMenuDivider(),
                  const PopupMenuItem(value: _MenuAction.exportBundle, child: Text('Export (.sma)...')),
                ],
              ),
            ],
          ),
          body: SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1400),
                child: isWide
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: stage(),
                            ),
                          ),
                          const VerticalDivider(width: 1),
                          SizedBox(width: 380, child: panel),
                        ],
                      )
                    : Padding(
                        padding: const EdgeInsets.all(12),
                        child: stage(),
                      ),
              ),
            ),
          ),
          bottomNavigationBar: bottomControls(
            compact: compact,
            showLayersButton: !isWide,
          ),
        );
      },
    );
  }
}

enum _AddLayerKind {
  stickman,
  model,
  image,
  sprite,
}

class _LayersPanel extends StatefulWidget {
  final Sequence sequence;
  final bool showClose;
  final int currentFrame;
  final void Function(Sequence) onPreview;
  final Future<void> Function(Sequence) onCommit;

  const _LayersPanel({
    required this.sequence,
    required this.showClose,
    required this.currentFrame,
    required this.onPreview,
    required this.onCommit,
  });

  @override
  State<_LayersPanel> createState() => _LayersPanelState();
}

class _LayersPanelState extends State<_LayersPanel> {
  static const _uuid = Uuid();

  late Sequence _seq = widget.sequence;
  String? _selectedId;
  bool _busy = false;
  bool _showAddOptions = false;

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

  @override
  void didUpdateWidget(covariant _LayersPanel oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.sequence != widget.sequence) {
      _seq = widget.sequence;
      if (_selectedId != null && !_seq.instances.any((i) => i.id == _selectedId)) {
        _selectedId = null;
      }
    }
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

  Future<void> _addLayer(_AddLayerKind kind) async {
    if (_busy) return;

    setState(() => _showAddOptions = false);

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
              withData: Platform.isAndroid || Platform.isIOS,
              type: FileType.custom,
              allowedExtensions: const ['png', 'jpg', 'jpeg', 'webp'],
            );
            final f = res?.files.singleOrNull;
            if (f == null) return;
            final pth = f.path;
            final ext = path.extension(f.name);
            final model = pth != null
                ? await repo.createImageModel(pth)
                : (f.bytes != null
                    ? await repo.createImageModelFromBytes(
                        f.bytes!,
                        name: path.basenameWithoutExtension(f.name),
                        ext: ext.isEmpty ? '.png' : ext,
                      )
                    : null);
            if (model == null) return;
            final inst = _newInstanceForModel(model);
            await _commit(_seq.copyWith(instances: [..._seq.instances, inst]), selectId: inst.id);
            break;
          }
        case _AddLayerKind.sprite:
          {
            final res = await FilePicker.platform.pickFiles(
              allowMultiple: true,
              withData: Platform.isAndroid || Platform.isIOS,
              type: FileType.custom,
              allowedExtensions: const ['png', 'jpg', 'jpeg', 'webp'],
            );
            final files = res?.files ?? const <PlatformFile>[];
            if (files.isEmpty) return;
            final paths = files.map((f) => f.path).whereType<String>().toList();
            late final Model model;
            if (paths.length == files.length) {
              model = await repo.createSpriteModel(paths);
            } else {
              final frames = <Uint8List>[];
              for (final f in files) {
                if (f.bytes != null) {
                  frames.add(f.bytes!);
                } else if (f.path != null) {
                  frames.add(await File(f.path!).readAsBytes());
                }
              }
              if (frames.isEmpty) {
                if (!mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('No readable image data selected.')),
                );
                return;
              }
              model = await repo.createSpriteModelFromBytes(
                frames,
                name: 'Sprite ${path.basenameWithoutExtension(files.first.name)}',
                ext: path.extension(files.first.name).isEmpty ? '.png' : path.extension(files.first.name),
              );
            }
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

  List<KeyF<double>> _upsertScalarKey(List<KeyF<double>> keys, int frame, double value) {
    final out = List<KeyF<double>>.from(keys);
    final idx = out.indexWhere((k) => k.t == frame);
    if (idx >= 0) {
      out[idx] = KeyF<double>(frame, value, easing: out[idx].easing);
    } else {
      out.add(KeyF<double>(frame, value));
    }
    out.sort((a, b) => a.t.compareTo(b.t));
    return out;
  }

  double _stepScalarAtFrame(List<KeyF<double>> keys, int frame, {double defaultValue = 0.0}) {
    if (keys.isEmpty) return defaultValue;
    KeyF<double>? best;
    for (final k in keys) {
      if (k.t <= frame && (best == null || k.t > best!.t)) {
        best = k;
      }
    }
    if (best != null) return best.v;
    KeyF<double> earliest = keys.first;
    for (final k in keys) {
      if (k.t < earliest.t) earliest = k;
    }
    return earliest.v;
  }

  Sequence _withAttachmentRotation({
    required Sequence seq,
    required String instanceId,
    required String attachmentId,
    required int frame,
    required double rotDeg,
  }) {
    final inst = seq.instances.where((i) => i.id == instanceId).firstOrNull;
    if (inst == null) return seq;

    final t0 = inst.attachmentTracks[attachmentId] ?? const AttTrack();
    final newRot = _upsertScalarKey(t0.rotDeg, frame, rotDeg);
    final newTrack = AttTrack(
      scale: t0.scale,
      opacity: t0.opacity,
      tint: t0.tint,
      frameIndex: t0.frameIndex,
      offset: t0.offset,
      rotDeg: newRot,
    );
    final newAttTracks = Map<String, AttTrack>.from(inst.attachmentTracks);
    newAttTracks[attachmentId] = newTrack;

    final newInst = inst.copyWith(attachmentTracks: newAttTracks);
    final newInsts = seq.instances.map((i) => i.id == inst.id ? newInst : i).toList();
    return seq.copyWith(instances: newInsts);
  }

  @override
  Widget build(BuildContext context) {
    final repo = context.read<AppState>().repo;
    final selectedInst = _selectedId == null ? null : _seq.instances.where((i) => i.id == _selectedId).firstOrNull;
    final selectedModel = selectedInst == null ? null : repo.models[selectedInst.modelId];
    final selectedImageAtt = selectedModel?.attachments.where((a) => a.type == PrimType.image).firstOrNull;
    final currentFrame = widget.currentFrame.clamp(1, 1000000).toInt();

    Widget? properties;
    if (selectedInst != null && selectedImageAtt != null) {
      final tr = selectedInst.attachmentTracks[selectedImageAtt.id] ?? const AttTrack();
      final rot = _stepScalarAtFrame(tr.rotDeg, currentFrame).clamp(-180.0, 180.0);
      properties = Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(Icons.rotate_right, size: 18),
                const SizedBox(width: 8),
                const Text('Rotation'),
                const Spacer(),
                Text('${rot.toStringAsFixed(0)}°'),
                const SizedBox(width: 8),
                IconButton(
                  tooltip: 'Reset',
                  onPressed: _busy
                      ? null
                      : () {
                          final next = _withAttachmentRotation(
                            seq: _seq,
                            instanceId: selectedInst.id,
                            attachmentId: selectedImageAtt.id,
                            frame: currentFrame,
                            rotDeg: 0.0,
                          );
                          setState(() => _seq = next);
                          widget.onPreview(next);
                          unawaited(_commit(next));
                        },
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
            Slider(
              min: -180,
              max: 180,
              value: rot,
              onChanged: _busy
                  ? null
                  : (v) {
                      final next = _withAttachmentRotation(
                        seq: _seq,
                        instanceId: selectedInst.id,
                        attachmentId: selectedImageAtt.id,
                        frame: currentFrame,
                        rotDeg: v,
                      );
                      setState(() => _seq = next);
                      widget.onPreview(next);
                    },
              onChangeEnd: _busy
                  ? null
                  : (v) {
                      final next = _withAttachmentRotation(
                        seq: _seq,
                        instanceId: selectedInst.id,
                        attachmentId: selectedImageAtt.id,
                        frame: currentFrame,
                        rotDeg: v,
                      );
                      unawaited(_commit(next));
                    },
            ),
            Text(
              'Frame $currentFrame',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final tight = constraints.maxWidth < 340;
              final addButton = tight
                  ? IconButton.filledTonal(
                      tooltip: 'Add',
                      icon: const Icon(Icons.add),
                      onPressed: _busy ? null : () => setState(() => _showAddOptions = !_showAddOptions),
                    )
                  : FilledButton.icon(
                      onPressed: _busy ? null : () => setState(() => _showAddOptions = !_showAddOptions),
                      icon: const Icon(Icons.add),
                      label: const Text('Add'),
                    );

              return Row(
                children: [
                  if (widget.showClose)
                    IconButton(
                      tooltip: 'Close',
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).maybePop(),
                    ),
                  Expanded(
                    child: Text(
                      'Layers ($_count)',
                      style: Theme.of(context).textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 8),
                  addButton,
                ],
              );
            },
          ),
        ),
        if (_showAddOptions)
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.person_add_alt_1),
                    title: const Text('Stickman'),
                    onTap: _busy ? null : () => _addLayer(_AddLayerKind.stickman),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.category_outlined),
                    title: const Text('From model library'),
                    onTap: _busy ? null : () => _addLayer(_AddLayerKind.model),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.image_outlined),
                    title: const Text('Import image'),
                    onTap: _busy ? null : () => _addLayer(_AddLayerKind.image),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.collections_outlined),
                    title: const Text('Import sprite (multiple images)'),
                    onTap: _busy ? null : () => _addLayer(_AddLayerKind.sprite),
                  ),
                ],
              ),
            ),
          ),
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
        if (properties != null) const Divider(height: 1),
        if (properties != null) properties,
      ],
    );
  }
}
