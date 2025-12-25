import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app.dart';
import '../../data/models.dart';

class ModelEditorScreen extends StatefulWidget {
  const ModelEditorScreen({super.key});

  @override
  State<ModelEditorScreen> createState() => _ModelEditorScreenState();
}

class _SegmentDef {
  String id;
  String parentId; // 'root' for top-level under root
  double length;
  double angleDeg;
  double stroke;
  Color color;
  _SegmentDef({
    required this.id,
    required this.parentId,
    this.length = 60,
    this.angleDeg = 0,
    this.stroke = 4,
    this.color = const Color(0xFF111111),
  });
}

class _ModelEditorScreenState extends State<ModelEditorScreen> {
  final List<_SegmentDef> _segs = [];
  String? _selectedId;
  final TextEditingController _nameCtl = TextEditingController(text: 'My Figure');
  // Drag and options
  bool _snapAngle = true; // 15° snap
  bool _lockLength = false; // rotate only when true
  // Parts toggles
  bool _autoHead = false;
  bool _autoClavicles = false;
  // Batch style
  Color _styleColor = const Color(0xFF111111);
  double _styleStroke = 4.0;
  // Canvas state
  Size _lastCanvasSize = const Size(0, 0);
  bool _draggingEnd = false;

  _SegmentDef? get _sel => _segs.where((e) => e.id == _selectedId).firstOrNull;

  @override
  void initState() {
    super.initState();
    _segs.addAll([
      _SegmentDef(id: 'torso', parentId: 'root', length: 100, angleDeg: 0, stroke: 5),
      _SegmentDef(id: 'l_arm', parentId: 'torso', length: 60, angleDeg: -50, stroke: 4),
      _SegmentDef(id: 'r_arm', parentId: 'torso', length: 60, angleDeg: 50, stroke: 4),
      _SegmentDef(id: 'l_leg', parentId: 'torso', length: 70, angleDeg: 25, stroke: 4),
      _SegmentDef(id: 'r_leg', parentId: 'torso', length: 70, angleDeg: -25, stroke: 4),
    ]);
    _selectedId = 'torso';
  }

  String _genId() {
    int i = _segs.length + 1;
    while (_segs.any((e) => e.id == 'seg$i')) { i++; }
    return 'seg$i';
  }

  void _addChild() {
    final parent = _selectedId ?? 'torso';
    final id = _genId();
    setState(() { _segs.add(_SegmentDef(id: id, parentId: parent)); _selectedId = id; });
  }

  void _deleteSelected() {
    final id = _selectedId; if (id == null) return;
    if (id == 'torso') return; // keep torso as base
    void removeRec(String target) {
      final children = _segs.where((e) => e.parentId == target).map((e) => e.id).toList();
      _segs.removeWhere((e) => e.id == target);
      for (final c in children) { removeRec(c); }
    }
    setState(() { removeRec(id); _selectedId = 'torso'; });
  }

  void _moveBefore(String srcId, String dstId) {
    if (srcId == dstId) return;
    final iSrc = _segs.indexWhere((e) => e.id == srcId);
    final iDst = _segs.indexWhere((e) => e.id == dstId);
    if (iSrc < 0 || iDst < 0) return;
    final item = _segs.removeAt(iSrc);
    final insertAt = iSrc < iDst ? iDst - 1 : iDst;
    _segs.insert(insertAt, item);
  }

  void _moveToIndex(String srcId, int index) {
    final iSrc = _segs.indexWhere((e) => e.id == srcId);
    if (iSrc < 0) return;
    final item = _segs.removeAt(iSrc);
    var idx = index;
    if (idx < 0) idx = 0;
    if (idx > _segs.length) idx = _segs.length;
    _segs.insert(idx, item);
  }

  int _depthOf(_SegmentDef s) {
    final byId = { for (final e in _segs) e.id : e };
    int d = 0;
    String? cur = s.parentId;
    int guard = 0;
    while (cur != null && cur != 'root' && guard < 100) {
      final p = byId[cur];
      if (p == null) break;
      d++;
      cur = p.parentId;
      guard++;
    }
    return d;
  }

  Future<void> _renameSelected() async {
    final cur = _sel; if (cur == null) return;
    if (cur.id == 'torso') {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('기본 토르소 ID는 변경할 수 없습니다.')));
      }
      return;
    }
    final ctl = TextEditingController(text: cur.id);
    final ok = await showDialog<bool>(context: context, builder: (ctx){
      return AlertDialog(
        title: const Text('Rename Segment'),
        content: TextField(controller: ctl, autofocus: true, decoration: const InputDecoration(labelText: 'New ID')),
        actions: [
          TextButton(onPressed: ()=> Navigator.pop(ctx, false), child: const Text('Cancel')),
          FilledButton(onPressed: ()=> Navigator.pop(ctx, true), child: const Text('OK')),
        ],
      );
    });
    if (ok != true) return;
    final raw = ctl.text.trim();
    if (raw.isEmpty) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('ID를 입력하세요.')));
      }
      return;
    }
    final nid = raw.replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_').toLowerCase();
    if (nid == cur.id) return;
    if (_segs.any((e) => e.id == nid)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('ID가 중복됩니다.')));
      }
      return;
    }
    setState(() {
      for (final s in _segs) {
        if (s.parentId == cur.id) s.parentId = nid;
      }
      cur.id = nid;
      _selectedId = nid;
    });
  }

  // Guard against circular parenting
  bool _wouldCreateCycle(String childId, String newParentId) {
    if (childId == newParentId) return true;
    final children = <String, List<String>>{};
    for (final s in _segs) {
      children.putIfAbsent(s.parentId, () => []).add(s.id);
    }
    bool contains(String root, String target) {
      final ch = children[root] ?? const [];
      if (ch.contains(target)) return true;
      for (final c in ch) {
        if (contains(c, target)) return true;
      }
      return false;
    }
    return contains(childId, newParentId);
  }

  Model _buildModel(String id, String name) {
    final bones = <Bone>[ const Bone(id: 'root', parentId: null, pivot: Vec2(0,0), bind: Transform2D()) ];
    final segById = { for (final s in _segs) s.id : s };
    for (final s in _segs) {
      final parent = s.parentId;
      final parentLen = parent == 'root' ? 0 : (segById[parent]?.length ?? 0);
      bones.add(Bone(
        id: s.id,
        parentId: parent,
        pivot: const Vec2(0,0),
        bind: Transform2D(pos: Vec2(0, parentLen.toDouble()), rotDeg: s.angleDeg),
      ));
    }
    final atts = <Attachment>[];
    for (final s in _segs) {
      atts.add(Attachment(
        id: '${s.id}_line', boneId: s.id, type: PrimType.line,
        a: const Vec2(0,0), b: Vec2(0, s.length), strokeWidth: s.stroke,
        stroke: s.color, fill: const Color(0x00000000),
      ));
    }
    // Optional parts
    final torso = _segs.firstWhere((e) => e.id == 'torso', orElse: () => _segs.first);
    if (_autoHead) {
      final headR = (_styleStroke * 3).clamp(6.0, 40.0);
      atts.add(Attachment(
        id: 'head_circle', boneId: torso.id, type: PrimType.circle,
        a: Vec2(0, -headR), b: Vec2(headR, 0), strokeWidth: _styleStroke,
        stroke: _styleColor, fill: const Color(0x00000000),
      ));
    }
    if (_autoClavicles) {
      final neckY = -torso.length + 5;
      atts.addAll([
        Attachment(id: 'clavicle_l', boneId: torso.id, type: PrimType.line,
          a: Vec2(0, neckY), b: const Vec2(-40, -80), strokeWidth: _styleStroke, stroke: _styleColor, fill: const Color(0x00000000)),
        Attachment(id: 'clavicle_r', boneId: torso.id, type: PrimType.line,
          a: Vec2(0, neckY), b: const Vec2(40, -80), strokeWidth: _styleStroke, stroke: _styleColor, fill: const Color(0x00000000)),
      ]);
    }
    return Model(id: id, name: name, bones: bones, attachments: atts);
  }

  // Compute joint (start) position with cumulative ancestor rotation (0,0 at canvas center)
  Offset _jointPos(String id) {
    final byId = { for (final s in _segs) s.id : s };
    // Build ancestor chain from immediate parent up to the highest under root
    final chain = <_SegmentDef>[];
    String? cur = byId[id]?.parentId;
    while (cur != null && cur != 'root') {
      final seg = byId[cur];
      if (seg == null) break;
      chain.add(seg);
      cur = seg.parentId;
    }
    // Apply transforms from top-most ancestor down to immediate parent
    double cumDeg = 0.0;
    Offset acc = Offset.zero;
    for (final seg in chain.reversed) {
      final totalDeg = cumDeg + seg.angleDeg;
      final ang = totalDeg * math.pi / 180.0;
      final v = const Offset(0, 0).translate(0, seg.length);
      final rv = Offset(
        v.dx * math.cos(ang) - v.dy * math.sin(ang),
        v.dx * math.sin(ang) + v.dy * math.cos(ang),
      );
      acc += rv;
      cumDeg += seg.angleDeg;
    }
    return acc;
  }

  // End position uses cumulative ancestor rotation plus the segment's own angle
  Offset _endPos(String id) {
    final byId = { for (final s in _segs) s.id : s };
    final s = byId[id]!;
    final start = _jointPos(id);
    // Sum ancestor angles
    double cumDeg = 0.0;
    String? cur = s.parentId;
    while (cur != null && cur != 'root') {
      final seg = byId[cur];
      if (seg == null) break;
      cumDeg += seg.angleDeg;
      cur = seg.parentId;
    }
    final totalDeg = cumDeg + s.angleDeg;
    final ang = totalDeg * math.pi / 180.0;
    final v = const Offset(0, 0).translate(0, s.length);
    final rv = Offset(
      v.dx * math.cos(ang) - v.dy * math.sin(ang),
      v.dx * math.sin(ang) + v.dy * math.cos(ang),
    );
    return start + rv;
  }

  void _loadFromModel(Model m) {
    setState(() {
      _segs.clear();
      // group attachments by bone
      final byBone = <String, List<Attachment>>{};
      for (final a in m.attachments) {
        byBone.putIfAbsent(a.boneId, () => []).add(a);
      }
      for (final b in m.bones.where((e) => e.id != 'root')) {
        double length = 60;
        double stroke = 4;
        Color color = const Color(0xFF111111);
        final la = (byBone[b.id] ?? const [])
            .firstWhere((a) => a.type == PrimType.line, orElse: () => const Attachment(id: '', boneId: '', type: PrimType.line));
        if (la.id.isNotEmpty) {
          final dx = la.b.x - la.a.x;
          final dy = la.b.y - la.a.y;
          length = math.sqrt(dx*dx + dy*dy);
          stroke = la.strokeWidth;
          _styleColor = la.stroke;
          _styleStroke = la.strokeWidth;
        }
        if (la.id.isNotEmpty) {
          color = la.stroke;
        }
        _segs.add(_SegmentDef(id: b.id, parentId: b.parentId ?? 'root', length: length, angleDeg: b.bind.rotDeg, stroke: stroke, color: color));
      }
      _selectedId = _segs.isNotEmpty ? _segs.first.id : null;
      _nameCtl.text = m.name;
      _autoHead = m.attachments.any((a) => a.id == 'head_circle');
      _autoClavicles = m.attachments.any((a) => a.id == 'clavicle_l' || a.id == 'clavicle_r');
    });
  }

  @override
  Widget build(BuildContext context) {
    final app = context.read<AppState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pivot-style Model Builder'),
        actions: [
          IconButton(
            icon: const Icon(Icons.publish),
            tooltip: 'Save & Insert to Scene',
            onPressed: () async {
              final app = context.read<AppState>();
              final name = _nameCtl.text.trim().isEmpty ? 'My Figure' : _nameCtl.text.trim();
              final id = name.toLowerCase().replaceAll(RegExp(r'[^a-z0-9_]'), '_');
              final m = _buildModel(id.isEmpty? 'figure_${DateTime.now().millisecondsSinceEpoch}' : id, name);
              await app.repo.saveUserModel(m);
              if (!mounted) return;
              Navigator.pop(context, m.id);
            },
          ),
          IconButton(
            icon: const Icon(Icons.folder_open),
            tooltip: 'Load Model',
            onPressed: () async {
              final repo = app.repo;
              final chosen = await showModalBottomSheet<Model>(
                context: context,
                builder: (ctx) => ListView(
                  children: repo.models.values.map((m) => ListTile(
                    title: Text(m.name),
                    subtitle: Text(m.id),
                    onTap: () => Navigator.pop(ctx, m),
                  )).toList(),
                ),
              );
              if (chosen != null) {
                _loadFromModel(chosen);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Loaded: ${chosen.name}')));
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.save_alt),
            tooltip: 'Save Model',
            onPressed: () async {
              final name = _nameCtl.text.trim();
              if (name.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('이름을 입력하세요.')));
                return;
              }
              final ids = _segs.map((e) => e.id).toList();
              if (ids.toSet().length != ids.length) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('ID가 중복됩니다. 중복을 제거하세요.')));
                return;
              }
              final id = name.toLowerCase().replaceAll(RegExp(r'[^a-z0-9_]'), '_');
              final m = _buildModel(id.isEmpty? 'figure_${DateTime.now().millisecondsSinceEpoch}' : id, name);
              await app.repo.saveUserModel(m);
              if (!mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Saved model: ${m.name}')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.save_as),
            tooltip: 'Save As...',
            onPressed: () async {
              final nameCtl = TextEditingController(text: _nameCtl.text.trim());
              final ok = await showDialog<bool>(context: context, builder: (ctx){
                return AlertDialog(
                  title: const Text('Save Model As'),
                  content: TextField(controller: nameCtl, decoration: const InputDecoration(labelText: 'Name')),
                  actions: [
                    TextButton(onPressed: ()=> Navigator.pop(ctx,false), child: const Text('Cancel')),
                    FilledButton(onPressed: ()=> Navigator.pop(ctx,true), child: const Text('Save')),
                  ],
                );
              });
              if (ok != true) return;
              final nm = nameCtl.text.trim();
              if (nm.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('이름을 입력하세요.')));
                return;
              }
              _nameCtl.text = nm;
              final id = nm.toLowerCase().replaceAll(RegExp(r'[^a-z0-9_]'), '_');
              final m = _buildModel(id.isEmpty? 'figure_${DateTime.now().millisecondsSinceEpoch}' : id, nm);
              await app.repo.saveUserModel(m);
              if (!mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Saved model: ${m.name}')));
            },
          )
        ],
      ),
      body: Row(children: [
        SizedBox(
          width: 220,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: _nameCtl, decoration: const InputDecoration(labelText: 'Model name')),
            ),
            Expanded(
              child: ListView(
                children: [
                  // Root drop target (set as top-level)
                  Builder(builder: (context){
                    return DragTarget<String>(
                      onWillAccept: (src) => src != null,
                      onAccept: (src) {
                        final seg = _segs.firstWhere((e)=> e.id == src, orElse: ()=> _SegmentDef(id:'', parentId:'root'));
                        if (seg.id.isEmpty) return;
                        setState((){ seg.parentId = 'root'; });
                      },
                      builder: (ctx, cand, rej) {
                        final hov = cand.isNotEmpty;
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: hov ? Theme.of(context).colorScheme.primary : Colors.black12),
                            color: hov ? Theme.of(context).colorScheme.primary.withOpacity(0.08) : Colors.transparent,
                          ),
                          child: const Center(child: Text('Drop here to set parent: root')),
                        );
                      },
                    );
                  }),
                  for (int i = 0; i < _segs.length; i++) ...[
                    // Reorder-only drop zone (ABOVE)
                    DragTarget<String>(
                      onWillAccept: (src) => src != null && _segs.any((e)=> e.id == src),
                      onAccept: (src) { setState((){ _moveToIndex(src, i); }); },
                      builder: (ctx, cand, rej){
                        final hov = cand.isNotEmpty;
                        return Container(
                          height: 18,
                          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: hov ? Theme.of(context).colorScheme.primary.withOpacity(0.12) : Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: hov ? Theme.of(context).colorScheme.primary : Colors.transparent),
                          ),
                          child: hov ? Text('여기에 놓으면 위로 이동', style: Theme.of(context).textTheme.labelSmall) : null,
                        );
                      },
                    ),
                    LongPressDraggable<String>(
                      data: _segs[i].id,
                      dragAnchorStrategy: pointerDragAnchorStrategy,
                      feedback: Material(
                        color: Colors.transparent,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(8)),
                          child: Text(_segs[i].id, style: const TextStyle(color: Colors.white)),
                        ),
                      ),
                      child: DragTarget<String>(
                        onWillAccept: (src) {
                          if (src == null) return false;
                          if (src == _segs[i].id) return false;
                          // prevent cycles
                          return !_wouldCreateCycle(src, _segs[i].id);
                        },
                        onAccept: (src) {
                          // reparent src under this item
                          if (_wouldCreateCycle(src, _segs[i].id)) {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('순환 부모는 허용되지 않습니다.')));
                            return;
                          }
                          setState((){
                            final seg = _segs.firstWhere((e)=> e.id == src);
                            seg.parentId = _segs[i].id;
                          });
                        },
                        builder: (ctx, cand, rej) {
                          final hov = cand.isNotEmpty;
                          final s = _segs[i];
                          final depth = _depthOf(s);
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: hov ? Theme.of(context).colorScheme.primary : Colors.transparent),
                              color: s.id == _selectedId ? Theme.of(context).colorScheme.primary.withOpacity(0.08) : Colors.transparent,
                            ),
                            child: ListTile(
                              leading: Icon(Icons.drag_indicator, color: Theme.of(context).colorScheme.outline),
                              title: Text(s.id),
                              subtitle: Text('parent: ${s.parentId}'),
                              trailing: Container(width: 14, height: 14, decoration: BoxDecoration(color: s.color, shape: BoxShape.circle, border: Border.all(color: Colors.black26))),
                              selected: s.id == _selectedId,
                              contentPadding: EdgeInsets.only(left: 12.0 + depth * 12.0, right: 12.0),
                              onTap: () => setState(() => _selectedId = s.id),
                            ),
                          );
                        },
                      ),
                    ),
                    // Reorder-only drop zone (BELOW)
                    DragTarget<String>(
                      onWillAccept: (src) => src != null && _segs.any((e)=> e.id == src),
                      onAccept: (src) { setState((){ _moveToIndex(src, i + 1); }); },
                      builder: (ctx, cand, rej){
                        final hov = cand.isNotEmpty;
                        return Container(
                          height: 18,
                          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: hov ? Theme.of(context).colorScheme.primary.withOpacity(0.12) : Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: hov ? Theme.of(context).colorScheme.primary : Colors.transparent),
                          ),
                          child: hov ? Text('여기에 놓으면 아래로 이동', style: Theme.of(context).textTheme.labelSmall) : null,
                        );
                      },
                    ),
                  ],
                  // End drop zone (kept for clarity)
                  DragTarget<String>(
                    onWillAccept: (src) => src != null && _segs.any((e)=> e.id == src),
                    onAccept: (src) { setState((){ _moveToIndex(src, _segs.length); }); },
                    builder: (ctx, cand, rej){
                      final hov = cand.isNotEmpty;
                      return Container(
                        height: 24,
                        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: hov ? Theme.of(context).colorScheme.primary.withOpacity(0.12) : Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: hov ? Theme.of(context).colorScheme.primary : Colors.transparent),
                        ),
                        child: hov ? Text('여기에 놓으면 리스트 끝으로 이동', style: Theme.of(context).textTheme.labelSmall) : null,
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Expanded(child: FilledButton.icon(onPressed: _addChild, icon: const Icon(Icons.add), label: const Text('Add child'))),
                const SizedBox(width: 8),
                IconButton(tooltip: 'Rename', onPressed: _renameSelected, icon: const Icon(Icons.edit_outlined)),
                IconButton(tooltip: 'Delete', onPressed: _deleteSelected, icon: const Icon(Icons.delete_outline))
              ]),
            )
          ]),
        ),
        Expanded(
          child: Container(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: LayoutBuilder(
              builder: (ctx, constraints) {
                _lastCanvasSize = Size(constraints.maxWidth, constraints.maxHeight);
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onPanStart: (d) {
                    final sel = _selectedId; if (sel == null) return;
                    final center = Offset(_lastCanvasSize.width/2, _lastCanvasSize.height/2);
                    final lp = d.localPosition - center;
                    final end = _endPos(sel);
                    if ((lp - end).distance <= 24) {
                      _draggingEnd = true;
                    }
                  },
                  onPanUpdate: (d) {
                    if (!_draggingEnd) return;
                    final sel = _sel; if (sel == null) return;
                    final center = Offset(_lastCanvasSize.width/2, _lastCanvasSize.height/2);
                    final lp = d.localPosition - center;
                    final start = _jointPos(sel.id);
                    final v = lp - start;
                    double na = (math.atan2(v.dy, v.dx) * 180 / math.pi) - 90.0;
                    if (_snapAngle) na = (na / 15.0).round() * 15.0;
                    na = na.clamp(-180.0, 180.0);
                    double nl = sel.length;
                    if (!_lockLength) nl = v.distance.clamp(10.0, 200.0);
                    setState(() { sel.angleDeg = na; sel.length = nl; });
                  },
                  onPanEnd: (_) { _draggingEnd = false; },
                  onPanCancel: () { _draggingEnd = false; },
                  child: CustomPaint(
                    painter: _PreviewPainter(
                      _segs,
                      selectedId: _selectedId,
                      handleColor: Theme.of(context).colorScheme.primary,
                      autoHead: _autoHead,
                      autoClavicles: _autoClavicles,
                      styleColor: _styleColor,
                      styleStroke: _styleStroke,
                    ),
                    child: const SizedBox.expand(),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          width: 280,
          child: _buildInspector(context),
        )
      ]),
    );
  }

  Widget _buildInspector(BuildContext context) {
    final s = _sel;
    if (s == null) return const SizedBox();
    final parents = ['root', ..._segs.map((e) => e.id).where((id) => id != s.id)];
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        Text('Selected: ${s.id}', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        DropdownButton<String>(
          value: s.parentId,
          items: parents.map((p) => DropdownMenuItem(value: p, child: Text('Parent: $p'))).toList(),
          onChanged: (v){
            if (v==null) return;
            if (_wouldCreateCycle(s.id, v)) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('순환 부모는 허용되지 않습니다.')));
              return;
            }
            setState(()=> s.parentId = v);
          },
        ),
        const SizedBox(height: 12),
        Text('Length: ${s.length.toStringAsFixed(0)}'),
        Slider(min: 10, max: 200, divisions: 190, value: s.length, onChanged: (v){ setState(()=> s.length = v); }),
        const SizedBox(height: 12),
        Text('Angle: ${s.angleDeg.toStringAsFixed(0)}°'),
        Slider(min: -180, max: 180, divisions: 360, value: s.angleDeg, onChanged: (v){ setState(()=> s.angleDeg = v); }),
        const SizedBox(height: 12),
        Text('Stroke: ${s.stroke.toStringAsFixed(1)}'),
        Slider(min: 1, max: 12, divisions: 22, value: s.stroke, onChanged: (v){ setState(()=> s.stroke = v); }),
        const SizedBox(height: 12),
        Text('Part color', style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height: 6),
        Row(children: [
          for (final c in [const Color(0xFF111111), Colors.red, Colors.blue, Colors.green, Colors.orange, Colors.purple])
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: InkWell(
                onTap: () => setState(()=> s.color = c),
                child: Container(width: 20, height: 20, decoration: BoxDecoration(color: c, shape: BoxShape.circle, border: Border.all(color: Colors.black12))),
              ),
            ),
          const Spacer(),
          Container(width: 20, height: 20, decoration: BoxDecoration(color: s.color, shape: BoxShape.circle, border: Border.all(color: Colors.black26))),
        ]),
        const Divider(),
        SwitchListTile(title: const Text('Snap 15°'), value: _snapAngle, onChanged: (v)=> setState(()=> _snapAngle=v)),
        SwitchListTile(title: const Text('Length Lock'), value: _lockLength, onChanged: (v)=> setState(()=> _lockLength=v)),
        const Divider(),
        SwitchListTile(title: const Text('Head (circle) auto'), value: _autoHead, onChanged: (v)=> setState(()=> _autoHead=v)),
        SwitchListTile(title: const Text('Clavicle lines auto'), value: _autoClavicles, onChanged: (v)=> setState(()=> _autoClavicles=v)),
        const SizedBox(height: 8),
        Text('Style color/stroke', style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height: 6),
        Row(children: [
          for (final c in [const Color(0xFF111111), Colors.red, Colors.blue, Colors.green, Colors.orange, Colors.purple])
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: InkWell(
                onTap: () => setState(()=> _styleColor = c),
                child: Container(width: 20, height: 20, decoration: BoxDecoration(color: c, shape: BoxShape.circle, border: Border.all(color: Colors.black12))),
              ),
            ),
          const Spacer(),
          SizedBox(width: 56, child: Text(_styleStroke.toStringAsFixed(1), textAlign: TextAlign.right)),
        ]),
        Slider(min: 1, max: 12, divisions: 22, value: _styleStroke, onChanged: (v)=> setState(()=> _styleStroke = v)),
        Row(children: [
          Expanded(child: OutlinedButton(onPressed: (){ setState(()=> _segs.forEach((e)=> e.stroke=_styleStroke)); }, child: const Text('Apply stroke to all'))),
          const SizedBox(width: 8),
          Expanded(child: OutlinedButton(onPressed: (){ setState(()=> _segs.forEach((e)=> e.color=_styleColor)); }, child: const Text('Apply color to all'))),
        ])
      ],
    );
  }
}

class _PreviewPainter extends CustomPainter {
  final List<_SegmentDef> segs;
  final String? selectedId;
  final Color handleColor;
  final bool autoHead;
  final bool autoClavicles;
  final Color styleColor;
  final double styleStroke;
  _PreviewPainter(
    this.segs, {
      this.selectedId,
      this.handleColor = const Color(0xFF2E7D32),
      this.autoHead = false,
      this.autoClavicles = false,
      this.styleColor = const Color(0xFF111111),
      this.styleStroke = 4.0,
    }
  );

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(size.width/2, size.height/2);
    final byId = { for (final s in segs) s.id : s };

    void drawSeg(String id) {
      final s = byId[id]; if (s == null) return;
      if (s.parentId != 'root') drawSeg(s.parentId);
      final parentLen = s.parentId == 'root' ? 0.0 : (byId[s.parentId]?.length ?? 0.0);
      final stroke = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = s.stroke
        ..strokeCap = StrokeCap.round
        ..color = s.color;
      canvas.save();
      canvas.translate(0, parentLen);
      canvas.rotate(s.angleDeg * math.pi/180);
      canvas.drawLine(Offset.zero, Offset(0, s.length), stroke);
      if (selectedId == s.id) {
        final hp = Paint()..style = PaintingStyle.fill..color = handleColor;
        canvas.drawCircle(Offset(0, s.length), 5, hp);
        canvas.drawCircle(Offset(0, s.length), 9, Paint()..style = PaintingStyle.stroke..strokeWidth = 1.5..color = handleColor.withOpacity(0.7));
      }
      canvas.restore();
    }

    for (final s in segs.where((e) => e.parentId == 'root')) {
      drawSeg(s.id);
    }

    // Optional parts preview
    if (segs.isNotEmpty) {
      final torso = segs.firstWhere((e) => e.id == 'torso', orElse: () => segs.first);
      final torsoAng = torso.angleDeg * math.pi/180;
      final topLocal = Offset(0, -torso.length);
      final topWorld = Offset(
        topLocal.dx * math.cos(torsoAng) - topLocal.dy * math.sin(torsoAng),
        topLocal.dx * math.sin(torsoAng) + topLocal.dy * math.cos(torsoAng),
      );
      if (autoHead) {
        final r = (styleStroke * 3).clamp(6.0, 40.0);
        final p = Paint()..style = PaintingStyle.stroke..strokeWidth = styleStroke..color = styleColor;
        canvas.save();
        canvas.translate(topWorld.dx, topWorld.dy);
        canvas.drawCircle(Offset.zero, r, p);
        canvas.restore();
      }
      if (autoClavicles) {
        final p = Paint()..style = PaintingStyle.stroke..strokeWidth = styleStroke..strokeCap = StrokeCap.round..color = styleColor;
        final a = topWorld.translate(0, 5);
        canvas.drawLine(a, a + const Offset(-40, -80), p);
        canvas.drawLine(a, a + const Offset(40, -80), p);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _PreviewPainter old) => true;
}

extension<T> on Iterable<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
