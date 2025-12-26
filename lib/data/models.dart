import 'package:flutter/material.dart';

class Vec2 {
  final double x;
  final double y;
  const Vec2(this.x, this.y);
  Map<String, dynamic> toJson() => {'x': x, 'y': y};
  factory Vec2.fromJson(Map<String, dynamic> j) => Vec2((j['x'] as num).toDouble(), (j['y'] as num).toDouble());
  Offset get o => Offset(x, y);
}

class Transform2D {
  final Vec2 pos;
  final double rotDeg;
  final Vec2 scale;
  const Transform2D({this.pos = const Vec2(0, 0), this.rotDeg = 0.0, this.scale = const Vec2(1, 1)});
  Transform2D copyWith({Vec2? pos, double? rotDeg, Vec2? scale}) => Transform2D(
    pos: pos ?? this.pos,
    rotDeg: rotDeg ?? this.rotDeg,
    scale: scale ?? this.scale,
  );
  Map<String, dynamic> toJson() => {'pos': pos.toJson(), 'rotDeg': rotDeg, 'scale': scale.toJson()};
  factory Transform2D.fromJson(Map<String, dynamic> j) => Transform2D(
        pos: Vec2.fromJson(j['pos']),
        rotDeg: (j['rotDeg'] as num?)?.toDouble() ?? 0.0,
        scale: Vec2.fromJson(j['scale'] ?? const {'x': 1, 'y': 1}),
      );
}

class Easing {
  final String type;
  const Easing(this.type);
}

class KeyF<T> {
  final int t;
  final T v;
  final Easing? easing;
  const KeyF(this.t, this.v, {this.easing});
}

class TrackTransform {
  final List<KeyF<Vec2>> pos;
  final List<KeyF<double>> rotDeg;
  final List<KeyF<Vec2>> scale;
  const TrackTransform({this.pos = const [], this.rotDeg = const [], this.scale = const []});
}

class AttTrack {
  final List<KeyF<Vec2>> scale;
  final List<KeyF<double>> opacity;
  final List<KeyF<int>> tint;
  final List<KeyF<double>> frameIndex;
  // Local offset in attachment's bone-local space (for fine-tuning positions)
  final List<KeyF<Vec2>> offset;
  // Local rotation in degrees (applied around attachment center)
  final List<KeyF<double>> rotDeg;
  const AttTrack({
    this.scale = const [],
    this.opacity = const [],
    this.tint = const [],
    this.frameIndex = const [],
    this.offset = const [],
    this.rotDeg = const [],
  });
}

enum PrimType { circle, rect, line, path, image }

class Attachment {
  final String id;
  final String boneId;
  final PrimType type;
  final Vec2 a;
  final Vec2 b;
  final List<Vec2>? points;
  final List<List<Vec2>>? subpaths; // optional multi-contour path (even-odd fill)
  final bool closed;
  final double strokeWidth;
  final Color stroke;
  final Color fill;
  final String? imagePath;
  final List<String>? spriteFrames;
  const Attachment({
    required this.id,
    required this.boneId,
    required this.type,
    this.a = const Vec2(0, 0),
    this.b = const Vec2(0, 0),
    this.points,
    this.subpaths,
    this.closed = false,
    this.strokeWidth = 1.0,
    this.stroke = const Color(0xFF000000),
    this.fill = const Color(0x00000000),
    this.imagePath,
    this.spriteFrames,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'boneId': boneId,
        'type': type.name,
        'a': a.toJson(),
        'b': b.toJson(),
        'points': points?.map((e) => e.toJson()).toList(),
        'subpaths': subpaths?.map((lst) => lst.map((e)=> e.toJson()).toList()).toList(),
        'closed': closed,
        'strokeWidth': strokeWidth,
        'stroke': stroke.value,
        'fill': fill.value,
        'imagePath': imagePath,
        'spriteFrames': spriteFrames,
      };

  factory Attachment.fromJson(Map<String, dynamic> j) => Attachment(
        id: j['id'],
        boneId: j['boneId'],
        type: PrimType.values.firstWhere((e) => e.name == j['type'], orElse: () => PrimType.rect),
        a: Vec2.fromJson(j['a']),
        b: Vec2.fromJson(j['b']),
        points: (j['points'] as List?)?.map((e) => Vec2.fromJson(e)).toList(),
        subpaths: (j['subpaths'] as List?)?.map((lst) => (lst as List).map((e)=> Vec2.fromJson(e)).toList()).toList(),
        closed: j['closed'] ?? false,
        strokeWidth: (j['strokeWidth'] as num?)?.toDouble() ?? 1.0,
        stroke: Color((j['stroke'] as num?)?.toInt() ?? 0xFF000000),
        fill: Color((j['fill'] as num?)?.toInt() ?? 0x00000000),
        imagePath: j['imagePath'],
        spriteFrames: (j['spriteFrames'] as List?)?.cast<String>(),
      );
}

class Bone {
  final String id;
  final String? parentId;
  final Vec2 pivot;
  final Transform2D bind;
  const Bone({required this.id, required this.parentId, required this.pivot, required this.bind});

  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'pivot': pivot.toJson(),
        'bind': bind.toJson(),
      };
  factory Bone.fromJson(Map<String, dynamic> j) => Bone(
        id: j['id'],
        parentId: j['parentId'],
        pivot: Vec2.fromJson(j['pivot']),
        bind: Transform2D.fromJson(j['bind']),
      );
}

class Model {
  final String id;
  final String name;
  final List<Bone> bones;
  final List<Attachment> attachments;
  const Model({required this.id, required this.name, required this.bones, required this.attachments});

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'bones': bones.map((e) => e.toJson()).toList(),
        'attachments': attachments.map((e) => e.toJson()).toList(),
      };
  factory Model.fromJson(Map<String, dynamic> j) => Model(
        id: j['id'],
        name: j['name'],
        bones: (j['bones'] as List).map((e) => Bone.fromJson(e)).toList(),
        attachments: (j['attachments'] as List).map((e) => Attachment.fromJson(e)).toList(),
      );
}

class Instance {
  final String id;
  final String name;
  final String modelId;
  final Transform2D base;
  final TrackTransform? baseTrack;
  final Map<String, TrackTransform> boneTracks;
  // Optional: direct anchor XY per bone (frame-stepped). If present, renderer prioritizes this for position.
  final Map<String, List<KeyF<Vec2>>> anchorTracks;
  final Map<String, AttTrack> attachmentTracks;
  final Map<String, Vec2> ikPoles; // boneId -> pole vector position in parent-local space
  final bool visible;
  final bool locked;
  final Vec2 pivot;
  final String? parentId;
  final double lineWidthScale; // global stroke width multiplier for this instance
  final List<String> tags; // arbitrary grouping tags
  const Instance({
    required this.id,
    required this.name,
    required this.modelId,
    required this.base,
    this.baseTrack,
    this.boneTracks = const {},
    this.anchorTracks = const {},
    this.attachmentTracks = const {},
    this.ikPoles = const {},
    this.visible = true,
    this.locked = false,
    this.pivot = const Vec2(0, 0),
    this.parentId,
    this.lineWidthScale = 1.0,
    this.tags = const [],
  });

  Instance copyWith({
    String? id,
    String? name,
    String? modelId,
    Transform2D? base,
    TrackTransform? baseTrack,
    Map<String, TrackTransform>? boneTracks,
    Map<String, AttTrack>? attachmentTracks,
    Map<String, List<KeyF<Vec2>>>? anchorTracks,
    Map<String, Vec2>? ikPoles,
    bool? visible,
    bool? locked,
    Vec2? pivot,
    String? parentId,
    double? lineWidthScale,
    List<String>? tags,
  }) => Instance(
        id: id ?? this.id,
        name: name ?? this.name,
        modelId: modelId ?? this.modelId,
        base: base ?? this.base,
        baseTrack: baseTrack ?? this.baseTrack,
        boneTracks: boneTracks ?? this.boneTracks,
        attachmentTracks: attachmentTracks ?? this.attachmentTracks,
        anchorTracks: anchorTracks ?? this.anchorTracks,
        ikPoles: ikPoles ?? this.ikPoles,
        visible: visible ?? this.visible,
        locked: locked ?? this.locked,
        pivot: pivot ?? this.pivot,
        parentId: parentId ?? this.parentId,
        lineWidthScale: lineWidthScale ?? this.lineWidthScale,
        tags: tags ?? this.tags,
      );
}

class AudioTrack {
  final String path;
  final double offsetSec;
  final double gain;
  final bool mute;
  const AudioTrack({required this.path, this.offsetSec = 0, this.gain = 1.0, this.mute = false});
}

class SequenceSetting {
  final int fps;
  final int width;
  final int height;
  final double playbackRate;
  final int totalFrames;
  final bool interpolate;
  // Stick Fighter meta + editor prefs
  // height/width ratio stored for reference to keep aspect parity with external apps
  final double heightWidthRatio;
  // Background applied to preview/export (image path takes precedence when present)
  final Color backgroundColor;
  final String? backgroundImage;
  // Preview downscale quality factor (0.5~1.0), UI preview only
  final double previewDownscale;
  // Editor: hit-test tolerance for joint/handle in pixels
  final double hitTolerancePx;
  // Editor: enforce fixed segment length (parent-child distance) when moving/scaling pivots
  final bool enforceLengthLock;
  // Editor: write anchor step keys on edit (move/rotate/IK)
  final bool anchorWriteOnEdit;
  // Smart mode priority: when true, end-effector IK takes priority over pivot-rotate on grabs
  final bool smartIkPriority;
  // Lasso pivot mode: 'mass' | 'bbox' | 'instance'
  final String lassoPivot;
  // Render: auto ensure stroke/background contrast (preview/export)
  final bool autoStrokeContrast;
  // Render: minimum contrast ratio when autoStrokeContrast is enabled
  final double minStrokeContrast;
  // Editor: behavior when dragging on empty space: 'pan' | 'layer'
  final String blankDragMode;
  // Pivot/Gizmo: visual size multiplier for joint dots (1.0 = default)
  final double jointSizeScale;
  // Pivot/Gizmo: click radius multiplier for pivot hit-test (1.0 = default)
  final double pivotHitScale;
  // Pivot/Gizmo: additional pixels added to end-effector (손/발 끝) 핸들 판정 반경
  final double endHandleExtraPx;
  const SequenceSetting({
    this.fps = 30,
    this.width = 1280,
    this.height = 720,
    this.playbackRate = 1.0,
    this.totalFrames = 1,
    this.interpolate = false,
    this.heightWidthRatio = 720 / 1280,
    this.backgroundColor = const Color(0xFFFFFFFF),
    this.backgroundImage,
    this.previewDownscale = 0.7,
    this.hitTolerancePx = 40.0,
    this.enforceLengthLock = true,
    this.anchorWriteOnEdit = true,
    this.smartIkPriority = true,
    this.lassoPivot = 'mass',
    this.autoStrokeContrast = true,
    this.minStrokeContrast = 3.0,
    this.blankDragMode = 'layer',
    this.jointSizeScale = 1.0,
    this.pivotHitScale = 1.0,
    this.endHandleExtraPx = 6.0,
  });
  SequenceSetting copyWith({int? fps, int? width, int? height, double? playbackRate, int? totalFrames, bool? interpolate, double? heightWidthRatio, Color? backgroundColor, String? backgroundImage, double? previewDownscale, double? hitTolerancePx, bool? enforceLengthLock, bool? anchorWriteOnEdit, bool? smartIkPriority, String? lassoPivot, bool? autoStrokeContrast, double? minStrokeContrast, String? blankDragMode, double? jointSizeScale, double? pivotHitScale, double? endHandleExtraPx}) => SequenceSetting(
        fps: fps ?? this.fps,
        width: width ?? this.width,
        height: height ?? this.height,
        playbackRate: playbackRate ?? this.playbackRate,
        totalFrames: totalFrames ?? this.totalFrames,
        interpolate: interpolate ?? this.interpolate,
        heightWidthRatio: heightWidthRatio ?? this.heightWidthRatio,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        backgroundImage: backgroundImage ?? this.backgroundImage,
        previewDownscale: previewDownscale ?? this.previewDownscale,
        hitTolerancePx: hitTolerancePx ?? this.hitTolerancePx,
        enforceLengthLock: enforceLengthLock ?? this.enforceLengthLock,
        anchorWriteOnEdit: anchorWriteOnEdit ?? this.anchorWriteOnEdit,
        smartIkPriority: smartIkPriority ?? this.smartIkPriority,
        lassoPivot: lassoPivot ?? this.lassoPivot,
        autoStrokeContrast: autoStrokeContrast ?? this.autoStrokeContrast,
        minStrokeContrast: minStrokeContrast ?? this.minStrokeContrast,
        blankDragMode: blankDragMode ?? this.blankDragMode,
        jointSizeScale: jointSizeScale ?? this.jointSizeScale,
        pivotHitScale: pivotHitScale ?? this.pivotHitScale,
        endHandleExtraPx: endHandleExtraPx ?? this.endHandleExtraPx,
      );
}

class OnionSkinSetting {
  final int prevFrames;
  final int nextFrames;
  final double opacityFalloff;
  final Color prevColor;
  final Color nextColor;
  const OnionSkinSetting({
    this.prevFrames = 3,
    this.nextFrames = 3,
    this.opacityFalloff = 0.6,
    this.prevColor = const Color(0x44FF0000),
    this.nextColor = const Color(0x440000FF),
  });
}

class Sequence {
  final String id;
  final String name;
  final SequenceSetting setting;
  final OnionSkinSetting onion;
  final List<Instance> instances;
  final List<AudioTrack> audio;
  const Sequence({
    required this.id,
    required this.name,
    required this.setting,
    required this.onion,
    required this.instances,
    required this.audio,
  });

  Sequence copyWith({
    String? id,
    String? name,
    SequenceSetting? setting,
    OnionSkinSetting? onion,
    List<Instance>? instances,
    List<AudioTrack>? audio,
  }) => Sequence(
        id: id ?? this.id,
        name: name ?? this.name,
        setting: setting ?? this.setting,
        onion: onion ?? this.onion,
        instances: instances ?? this.instances,
        audio: audio ?? this.audio,
      );
}

class Project {
  final String id;
  final String name;
  final List<Sequence> sequences;
  final int lastOpened; // epoch millis for recent-sort
  final bool favorite; // pinned to top
  const Project({required this.id, required this.name, required this.sequences, this.lastOpened = 0, this.favorite = false});
}
