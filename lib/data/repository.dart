import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:archive/archive.dart';
import 'package:flutter/services.dart' show MissingPluginException, rootBundle;
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'models.dart';
import 'stick_profiles.dart';

class DataRepository {
  final _uuid = const Uuid();
  late Directory appDir;
  final List<Project> projects = [];
  final Map<String, Model> models = {}; // id -> model
  final Map<String, ui.Image> images = {}; // absPath -> decoded ui.Image
  final Map<String, double> imageCenterLuma = {}; // absPath -> 0..1 luma at image center
  final Map<String, String> easingPresets = {}; // name -> cubic(...) or builtin id
  final Map<String, Map<String, double>> poseLibrary = {}; // name -> { boneId: rotDeg }
  final Map<String, PoseMeta> poseMeta = {}; // name -> tags/favorite

  Directory get imagesDir => Directory(path.join(appDir.path, 'images'));

  Future<void> init() async {
    final isFlutterTest = Platform.environment['FLUTTER_TEST'] == 'true';
    if (isFlutterTest) {
      appDir = Directory(path.join(Directory.systemTemp.path, 'bokuanimator_test'));
    } else {
      try {
        appDir = await getApplicationDocumentsDirectory().timeout(const Duration(seconds: 2));
      } on TimeoutException {
        appDir = Directory(path.join(Directory.systemTemp.path, 'bokuanimator'));
      } on MissingPluginException {
        appDir = Directory(path.join(Directory.systemTemp.path, 'bokuanimator'));
      } catch (_) {
        appDir = Directory(path.join(Directory.systemTemp.path, 'bokuanimator'));
      }
    }
    if (!appDir.existsSync()) appDir.createSync(recursive: true);
    if (!imagesDir.existsSync()) imagesDir.createSync(recursive: true);
    await _loadModels();
    // Always refresh stickman from current profile so new spec takes precedence over user file
    try {
      final profile = await _loadStickProfileFromDisk();
      await applyStickProfile(profile, persist: false);
    } catch (_) {}
    models.putIfAbsent('stickman', () => generateStickmanFromProfile(const StickProfile()));
    await _loadProjects();
    // Ensure existing projects migrate any stick-figure instances to updated stickman
    try { await migrateStickFiguresToStickman(); } catch (_) {}
    await _loadEasingPresets();
    await _loadPoseLibrary();
    await _loadPoseMeta();
    if (projects.isEmpty) {
      final seq = Sequence(id: _uuid.v4(), name: "새 애니메이션", setting: const SequenceSetting(), onion: const OnionSkinSetting(), instances: [], audio: const []);
      projects.add(Project(id: _uuid.v4(), name: "새 프로젝트", sequences: [seq]));
      await _saveProjects();
    }
  }

  // Optional: read presets/stick_profile.json to override exact lengths
  Future<StickProfile> _loadStickProfileFromDisk() async {
    try {
      final f = File(path.join(appDir.path, 'presets', 'stick_profile.json'));
      final exists = await f.exists().timeout(const Duration(seconds: 2), onTimeout: () => false);
      if (exists) {
        final raw = await f.readAsString().timeout(const Duration(seconds: 2));
        final j = jsonDecode(raw) as Map<String, dynamic>;
        return StickProfile.fromJson(j);
      }
    } catch (_) {}
    return const StickProfile();
  }

  // ------------ easing presets ------------
  File get _easingFile => File(path.join(appDir.path, 'presets', 'easing.json'));

  Future<void> _loadEasingPresets() async {
    try {
      final f = _easingFile;
      final exists = await f.exists().timeout(const Duration(seconds: 2), onTimeout: () => false);
      if (exists) {
        final raw = await f.readAsString().timeout(const Duration(seconds: 2));
        final j = jsonDecode(raw) as Map<String, dynamic>;
        easingPresets
          ..clear()
          ..addAll(j.map((k, v) => MapEntry(k, v.toString())));
      }
    } catch (_) {}
  }

  Future<void> _saveEasingPresets() async {
    final f = _easingFile;
    f.parent.createSync(recursive: true);
    await f.writeAsString(const JsonEncoder.withIndent('  ').convert(easingPresets));
  }

  Future<void> addEasingPreset(String name, String easing) async {
    easingPresets[name] = easing;
    await _saveEasingPresets();
  }

  Future<void> removeEasingPreset(String name) async {
    easingPresets.remove(name);
    await _saveEasingPresets();
  }

  // ------------ pose library ------------
  File get _poseFile => File(path.join(appDir.path, 'presets', 'poses.json'));

  Future<void> _loadPoseLibrary() async {
    try {
      final f = _poseFile;
      final exists = await f.exists().timeout(const Duration(seconds: 2), onTimeout: () => false);
      if (exists) {
        final raw = await f.readAsString().timeout(const Duration(seconds: 2));
        final j = jsonDecode(raw) as Map<String, dynamic>;
        poseLibrary
          ..clear()
          ..addAll(j.map((k, v) => MapEntry(k, (v as Map<String, dynamic>).map((bk, bv) => MapEntry(bk, (bv as num).toDouble())))));
      }
    } catch (_) {}
  }

  Future<void> _savePoseLibrary() async {
    final f = _poseFile;
    f.parent.createSync(recursive: true);
    await f.writeAsString(const JsonEncoder.withIndent('  ').convert(poseLibrary));
  }

  // pose meta (tags/favorites)
  File get _poseMetaFile => File(path.join(appDir.path, 'presets', 'poses_meta.json'));

  Future<void> _loadPoseMeta() async {
    try {
      final f = _poseMetaFile;
      final exists = await f.exists().timeout(const Duration(seconds: 2), onTimeout: () => false);
      if (exists) {
        final raw = await f.readAsString().timeout(const Duration(seconds: 2));
        final j = jsonDecode(raw) as Map<String, dynamic>;
        poseMeta
          ..clear()
          ..addAll(j.map((k, v) => MapEntry(k, PoseMeta.fromJson(v as Map<String, dynamic>))));
      }
    } catch (_) {}
  }

  Future<void> _savePoseMeta() async {
    final f = _poseMetaFile;
    f.parent.createSync(recursive: true);
    final map = poseMeta.map((k, v) => MapEntry(k, v.toJson()));
    await f.writeAsString(const JsonEncoder.withIndent('  ').convert(map));
  }

  Future<void> setPoseTags(String name, List<String> tags) async {
    final m = poseMeta[name] ?? const PoseMeta(tags: [], favorite: false);
    poseMeta[name] = PoseMeta(tags: tags, favorite: m.favorite);
    await _savePoseMeta();
  }

  Future<void> togglePoseFavorite(String name) async {
    final m = poseMeta[name] ?? const PoseMeta(tags: [], favorite: false);
    poseMeta[name] = PoseMeta(tags: m.tags, favorite: !m.favorite);
    await _savePoseMeta();
  }

  List<String> allPoseTags() {
    final s = <String>{};
    for (final m in poseMeta.values) {
      s.addAll(m.tags);
    }
    final list = s.toList();
    list.sort();
    return list;
  }

  Future<File> exportPoseLibrary(File outFile) async {
    final obj = {
      'poses': poseLibrary,
      'meta': poseMeta.map((k, v) => MapEntry(k, v.toJson())),
    };
    await outFile.parent.create(recursive: true);
    await outFile.writeAsString(const JsonEncoder.withIndent('  ').convert(obj));
    return outFile;
  }

  Future<void> importPoseLibrary(File inFile, {bool merge = true}) async {
    final txt = await inFile.readAsString();
    final j = jsonDecode(txt) as Map<String, dynamic>;
    final poses = (j['poses'] as Map<String, dynamic>? ?? const {})
        .map((k, v) => MapEntry(k, (v as Map<String, dynamic>).map((bk, bv) => MapEntry(bk, (bv as num).toDouble()))));
    final meta = (j['meta'] as Map<String, dynamic>? ?? const {})
        .map((k, v) => MapEntry(k, PoseMeta.fromJson(v as Map<String, dynamic>)));
    if (!merge) {
      poseLibrary
        ..clear()
        ..addAll(poses);
      poseMeta
        ..clear()
        ..addAll(meta);
    } else {
      poseLibrary.addAll(poses);
      poseMeta.addAll(meta);
    }
    await _savePoseLibrary();
    await _savePoseMeta();
  }

  Future<void> addPose(String name, Map<String, double> rotations) async {
    poseLibrary[name] = rotations;
    poseMeta[name] = poseMeta[name] ?? const PoseMeta(tags: [], favorite: false);
    await _savePoseLibrary();
    await _savePoseMeta();
  }

  Future<void> removePose(String name) async {
    poseLibrary.remove(name);
    poseMeta.remove(name);
    await _savePoseLibrary();
    await _savePoseMeta();
  }

  Future<void> renamePose(String oldName, String newName) async {
    final v = poseLibrary.remove(oldName);
    if (v != null) {
      poseLibrary[newName] = v;
      final m = poseMeta.remove(oldName);
      if (m != null) poseMeta[newName] = m;
      await _savePoseLibrary();
      await _savePoseMeta();
    }
  }

  Future<void> _loadModels() async {
    final defaultAssets = [
      'assets/models/stickman.json',
    ];
    for (final p in defaultAssets) {
      try {
        final s = await rootBundle.loadString(p).timeout(const Duration(seconds: 2));
        final m = Model.fromJson(jsonDecode(s));
        models[m.id] = m;
      } catch (_) {}
    }

    final userDir = Directory(path.join(appDir.path, 'models'));
    if (userDir.existsSync()) {
      for (final f in userDir.listSync().whereType<File>().where((e) => e.path.endsWith('.json'))) {
        try {
          final js = await f.readAsString();
          final um = Model.fromJson(jsonDecode(js));
          // 기본 stickman 자산을 우선시: 동일 id는 무시
          // allow user stickman to override the asset version
          // (previously skipped when id=='stickman')
          if (um.id != 'stickman') { models[um.id] = um; }

          for (final a in um.attachments) {
            if (a.type == PrimType.image) {
              if (a.imagePath != null) await _ensureImageDecoded(a.imagePath!);
              if (a.spriteFrames != null) {
                for (final sp in a.spriteFrames!) {
                  await _ensureImageDecoded(sp);
                }
              }
            }
          }
        } catch (_) {}
      }
    }
  }

  Future<void> saveUserModel(Model m) async {
    final userDir = Directory(path.join(appDir.path, 'models'));
    if (!userDir.existsSync()) userDir.createSync(recursive: true);
    final f = File(path.join(userDir.path, '${m.id}.json'));
    await f.writeAsString(const JsonEncoder.withIndent('  ').convert(m.toJson()));
    models[m.id] = m;

    for (final a in m.attachments) {
      if (a.type == PrimType.image) {
        if (a.imagePath != null) await _ensureImageDecoded(a.imagePath!);
        if (a.spriteFrames != null) {
          for (final sp in a.spriteFrames!) {
            await _ensureImageDecoded(sp);
          }
        }
      }
    }
  }

  // Overwrite the default 'stickman' model from a numeric profile.
  // `persist=false` avoids blocking init on disk I/O (we can always regenerate from the profile).
  Future<void> applyStickProfile(StickProfile profile, {bool persist = true}) async {
    final m = generateStickmanFromProfile(profile);
    models[m.id] = m;
    if (persist) {
      try {
        await saveUserModel(m).timeout(const Duration(seconds: 2));
      } catch (_) {}
    }
    // Also migrate any stick-figure like instances to use the refreshed 'stickman'
    try { await migrateStickFiguresToStickman(); } catch (_) {}
  }

  // Replace existing stick-figure instances in all projects with the current 'stickman' model
  // Returns number of instances replaced.
  Future<int> migrateStickFiguresToStickman() async {
    final target = models['stickman'];
    if (target == null) return 0;
    final targetBones = {for (final b in target.bones) b.id};
    final targetAtts = {for (final a in target.attachments) a.id};

    bool _isStick(Model m) {
      final need = <String>{
        'torso','head',
        'l_upper_arm','l_lower_arm','r_upper_arm','r_lower_arm',
        'l_thigh','l_shin','r_thigh','r_shin'
      };
      final ids = {for (final b in m.bones) b.id};
      return need.difference(ids).isEmpty;
    }

    int replaced = 0;
    for (int pi = 0; pi < projects.length; pi++) {
      final proj = projects[pi];
      final newSeqs = <Sequence>[];
      bool projChanged = false;
      for (final seq in proj.sequences) {
        final newInsts = <Instance>[];
        bool seqChanged = false;
        for (final inst in seq.instances) {
          final srcModel = models[inst.modelId];
          if (srcModel != null && _isStick(srcModel) && inst.modelId != 'stickman') {
            // Keep only tracks for bones that exist in target
            final newTracks = <String, TrackTransform>{};
            for (final e in inst.boneTracks.entries) {
              if (targetBones.contains(e.key)) newTracks[e.key] = e.value;
            }
            // Keep only anchors for bones that exist
            final newAnchors = <String, List<KeyF<Vec2>>>{};
            for (final e in inst.anchorTracks.entries) {
              if (targetBones.contains(e.key)) newAnchors[e.key] = e.value;
            }
            // Keep attachment tracks that exist in target model
            final newAttTracks = <String, AttTrack>{};
            for (final e in inst.attachmentTracks.entries) {
              if (targetAtts.contains(e.key)) newAttTracks[e.key] = e.value;
            }
            newInsts.add(inst.copyWith(
              modelId: 'stickman',
              boneTracks: newTracks,
              anchorTracks: newAnchors,
              attachmentTracks: newAttTracks,
            ));
            replaced++;
            seqChanged = true;
          } else {
            newInsts.add(inst);
          }
        }
        newSeqs.add(seqChanged ? seq.copyWith(instances: newInsts) : seq);
        projChanged = projChanged || seqChanged;
      }
      if (projChanged) {
        projects[pi] = Project(id: proj.id, name: proj.name, sequences: newSeqs, lastOpened: DateTime.now().millisecondsSinceEpoch, favorite: proj.favorite);
      }
    }
    if (replaced > 0) await _saveProjects();
    return replaced;
  }

  File get _projectsFile => File(path.join(appDir.path, 'projects.json'));

  Future<void> _loadProjects() async {
    final isFlutterTest = Platform.environment['FLUTTER_TEST'] == 'true';

    final exists = await _projectsFile.exists().timeout(
      const Duration(seconds: 2),
      onTimeout: () {
        if (isFlutterTest) return false;
        throw TimeoutException('Timed out checking projects file');
      },
    );
    if (!exists) return;

    final s = await _projectsFile.readAsString().timeout(const Duration(seconds: 5));
    final j = jsonDecode(s) as List;
    projects.clear();
    for (final pjs in j) {
      projects.add(_projectFromJson(pjs));
    }
    // Migrate to 1-based frames so frame 0 does not exist in data
    _migrateOneBasedFrames();
    await _saveProjects().timeout(const Duration(seconds: 5));
  }

  void _migrateOneBasedFrames() {
    List<KeyF<Vec2>> fixVec2(List<KeyF<Vec2>> src) =>
        src.map((k) => KeyF<Vec2>(k.t <= 0 ? 1 : k.t, k.v, easing: k.easing)).toList();
    List<KeyF<double>> fixDouble(List<KeyF<double>> src) =>
        src.map((k) => KeyF<double>(k.t <= 0 ? 1 : k.t, k.v, easing: k.easing)).toList();
    List<KeyF<int>> fixInt(List<KeyF<int>> src) =>
        src.map((k) => KeyF<int>(k.t <= 0 ? 1 : k.t, k.v, easing: k.easing)).toList();

    for (int pi = 0; pi < projects.length; pi++) {
      final project = projects[pi];
      final migratedSequences = <Sequence>[];
      for (final sequence in project.sequences) {
        final migratedInstances = <Instance>[];
        int lastFrame = 1;
        for (final instance in sequence.instances) {
          TrackTransform? baseTrack = instance.baseTrack;
          if (baseTrack != null) {
            baseTrack = TrackTransform(
              pos: fixVec2(baseTrack.pos),
              rotDeg: fixDouble(baseTrack.rotDeg),
              scale: fixVec2(baseTrack.scale),
            );
            for (final key in baseTrack.pos) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
            for (final key in baseTrack.rotDeg) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
            for (final key in baseTrack.scale) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
          }
          final migratedBones = <String, TrackTransform>{};
          instance.boneTracks.forEach((boneId, track) {
            final fixedTrack = TrackTransform(
              pos: fixVec2(track.pos),
              rotDeg: fixDouble(track.rotDeg),
              scale: fixVec2(track.scale),
            );
            migratedBones[boneId] = fixedTrack;
            for (final key in fixedTrack.pos) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
            for (final key in fixedTrack.rotDeg) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
            for (final key in fixedTrack.scale) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
          });
          final migratedAttachments = <String, AttTrack>{};
          instance.attachmentTracks.forEach((attachmentId, track) {
            final fixedTrack = AttTrack(
              scale: fixVec2(track.scale),
              opacity: fixDouble(track.opacity),
              tint: fixInt(track.tint),
              frameIndex: fixDouble(track.frameIndex),
              offset: fixVec2(track.offset),
              rotDeg: fixDouble(track.rotDeg),
            );
            migratedAttachments[attachmentId] = fixedTrack;
            for (final key in fixedTrack.scale) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
            for (final key in fixedTrack.opacity) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
            for (final key in fixedTrack.tint) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
            for (final key in fixedTrack.frameIndex) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
            for (final key in fixedTrack.offset) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
            for (final key in fixedTrack.rotDeg) {
              if (key.t > lastFrame) {
                lastFrame = key.t;
              }
            }
          });
          migratedInstances.add(instance.copyWith(
            baseTrack: baseTrack,
            boneTracks: migratedBones,
            attachmentTracks: migratedAttachments,
          ));
        }
        final adjustedSetting = sequence.setting.totalFrames < lastFrame
            ? sequence.setting.copyWith(totalFrames: lastFrame)
            : sequence.setting;
        migratedSequences.add(sequence.copyWith(instances: migratedInstances, setting: adjustedSetting));
      }
      projects[pi] = Project(
        id: project.id,
        name: project.name,
        sequences: migratedSequences,
        lastOpened: project.lastOpened,
        favorite: project.favorite,
      );
    }
  }

  Future<void> _saveProjects() async {
    final j = projects.map(_projectToJson).toList();
    try {
      await _projectsFile
          .writeAsString(const JsonEncoder.withIndent('  ').convert(j))
          .timeout(const Duration(seconds: 5));
    } catch (_) {}
  }

  Map<String, dynamic> _projectToJson(Project p) => {
        'id': p.id,
        'name': p.name,
        'lastOpened': p.lastOpened,
        'favorite': p.favorite,
        'sequences': p.sequences.map(_sequenceToJson).toList(),
      };

  Project _projectFromJson(Map<String, dynamic> j) => Project(
        id: j['id'],
        name: j['name'],
        lastOpened: (j['lastOpened'] as int?) ?? 0,
        favorite: (j['favorite'] as bool?) ?? false,
        sequences: (j['sequences'] as List).map((e) => _sequenceFromJson(e)).toList(),
      );

  Map<String, dynamic> _sequenceToJson(Sequence s) => {
        'id': s.id,
        'name': s.name,
        'setting': {
          'fps': s.setting.fps,
          'width': s.setting.width,
          'height': s.setting.height,
          'playbackRate': s.setting.playbackRate,
          'totalFrames': s.setting.totalFrames,
          'interpolate': s.setting.interpolate,
          'heightWidthRatio': s.setting.heightWidthRatio,
          'backgroundColor': s.setting.backgroundColor.value,
          'backgroundImage': s.setting.backgroundImage,
          'previewDownscale': s.setting.previewDownscale,
          'hitTolerancePx': s.setting.hitTolerancePx,
          'enforceLengthLock': s.setting.enforceLengthLock,
          'anchorWriteOnEdit': s.setting.anchorWriteOnEdit,
          'smartIkPriority': s.setting.smartIkPriority,
          'autoStrokeContrast': s.setting.autoStrokeContrast,
          'minStrokeContrast': s.setting.minStrokeContrast,
          'lassoPivot': s.setting.lassoPivot,
          'blankDragMode': s.setting.blankDragMode,
          'jointSizeScale': s.setting.jointSizeScale,
          'pivotHitScale': s.setting.pivotHitScale,
          'endHandleExtraPx': s.setting.endHandleExtraPx,
        },
        'onion': {
          'prevFrames': s.onion.prevFrames,
          'nextFrames': s.onion.nextFrames,
          'opacityFalloff': s.onion.opacityFalloff,
          'prevColor': s.onion.prevColor.value,
          'nextColor': s.onion.nextColor.value,
        },
        'instances': s.instances.map(_instanceToJson).toList(),
        'audio': s.audio
            .map((a) => {
                  'path': a.path,
                  'offsetSec': a.offsetSec,
                  'gain': a.gain,
                  'mute': a.mute
                })
            .toList(),
      };

  double _defaultHitTolerancePx() {
    if (Platform.isAndroid || Platform.isIOS) return 60.0;
    return 40.0;
  }

  Sequence _sequenceFromJson(Map<String, dynamic> j) {
    final settingJson = (j['setting'] as Map?)?.cast<String, dynamic>() ?? const <String, dynamic>{};

    final fps = (settingJson['fps'] as num?)?.toInt() ?? 30;
    final width = ((settingJson['width'] as num?)?.toInt() ?? 1280).clamp(1, 16384);
    final height = ((settingJson['height'] as num?)?.toInt() ?? 720).clamp(1, 16384);
    final playbackRate = (settingJson['playbackRate'] as num?)?.toDouble() ?? 1.0;
    final totalFrames = ((settingJson['totalFrames'] as num?)?.toInt() ?? 300).clamp(1, 1000000);
    final interpolate = (settingJson['interpolate'] as bool?) ?? true;
    final heightWidthRatio = (settingJson['heightWidthRatio'] as num?)?.toDouble() ?? (height / width);
    final backgroundColor = ui.Color((settingJson['backgroundColor'] as num?)?.toInt() ?? 0xFFFFFFFF);
    final backgroundImage = settingJson['backgroundImage'] as String?;

    final onionJson = (j['onion'] as Map?)?.cast<String, dynamic>() ?? const <String, dynamic>{};
    final prevFrames = ((onionJson['prevFrames'] as num?)?.toInt() ?? 3).clamp(0, 999);
    final nextFrames = ((onionJson['nextFrames'] as num?)?.toInt() ?? 3).clamp(0, 999);
    final opacityFalloff = (onionJson['opacityFalloff'] as num?)?.toDouble() ?? 0.6;
    final prevColor = ui.Color((onionJson['prevColor'] as num?)?.toInt() ?? 0x44FF0000);
    final nextColor = ui.Color((onionJson['nextColor'] as num?)?.toInt() ?? 0x440000FF);

    return Sequence(
      id: j['id'],
      name: j['name'],
      setting: SequenceSetting(
        fps: fps,
        width: width,
        height: height,
        playbackRate: playbackRate,
        totalFrames: totalFrames,
        interpolate: interpolate,
        heightWidthRatio: heightWidthRatio,
        backgroundColor: backgroundColor,
        backgroundImage: backgroundImage,
        previewDownscale: (settingJson['previewDownscale'] as num?)?.toDouble() ?? 0.7,
        hitTolerancePx: (settingJson['hitTolerancePx'] as num?)?.toDouble() ?? _defaultHitTolerancePx(),
        enforceLengthLock: (settingJson['enforceLengthLock'] as bool?) ?? true,
        anchorWriteOnEdit: (settingJson['anchorWriteOnEdit'] as bool?) ?? true,
        smartIkPriority: (settingJson['smartIkPriority'] as bool?) ?? true,
        autoStrokeContrast: (settingJson['autoStrokeContrast'] as bool?) ?? true,
        minStrokeContrast: (settingJson['minStrokeContrast'] as num?)?.toDouble() ?? 3.0,
        lassoPivot: (settingJson['lassoPivot'] as String?) ?? 'mass',
        blankDragMode: (settingJson['blankDragMode'] as String?) ?? 'layer',
        jointSizeScale: (settingJson['jointSizeScale'] as num?)?.toDouble() ?? 1.0,
        pivotHitScale: (settingJson['pivotHitScale'] as num?)?.toDouble() ?? 1.0,
        endHandleExtraPx: (settingJson['endHandleExtraPx'] as num?)?.toDouble() ?? 6.0,
      ),
      onion: OnionSkinSetting(
        prevFrames: prevFrames,
        nextFrames: nextFrames,
        opacityFalloff: opacityFalloff,
        prevColor: prevColor,
        nextColor: nextColor,
      ),
      instances: (j['instances'] as List? ?? const []).map((e) => _instanceFromJson(e)).toList(),
      audio: (j['audio'] as List? ?? const [])
          .map(
            (a) => AudioTrack(
              path: a['path'],
              offsetSec: (a['offsetSec'] as num?)?.toDouble() ?? 0.0,
              gain: (a['gain'] as num?)?.toDouble() ?? 1.0,
              mute: (a['mute'] as bool?) ?? false,
            ),
          )
          .toList(),
    );
  }

  Map<String, dynamic> _instanceToJson(Instance i) => {
        'id': i.id,
        'name': i.name,
        'modelId': i.modelId,
        'base': {
          'pos': i.base.pos.toJson(),
          'rotDeg': i.base.rotDeg,
          'scale': i.base.scale.toJson()
        },
        if (i.baseTrack != null) 'baseTrack': _trackToJson(i.baseTrack!),
        'visible': i.visible,
        'locked': i.locked,
        'pivot': i.pivot.toJson(),
        'parentId': i.parentId,
        'lineWidthScale': i.lineWidthScale,
        if (i.tags.isNotEmpty) 'tags': i.tags,
        'ikPoles': i.ikPoles.map((k,v)=> MapEntry(k, v.toJson())),
        'boneTracks': i.boneTracks.map((k, v) => MapEntry(k, _trackToJson(v))),
        'attachmentTracks': i.attachmentTracks.map(
          (k, v) => MapEntry(
            k,
            {
              'scale': v.scale.map((e) => {'t': e.t, 'v': e.v.toJson(), 'e': e.easing?.type}).toList(),
              'opacity': v.opacity.map((e) => {'t': e.t, 'v': e.v, 'e': e.easing?.type}).toList(),
              'tint': v.tint.map((e) => {'t': e.t, 'v': e.v, 'e': e.easing?.type}).toList(),
              'frame': v.frameIndex.map((e) => {'t': e.t, 'v': e.v, 'e': e.easing?.type}).toList(),
              'offset': v.offset.map((e) => {'t': e.t, 'v': e.v.toJson(), 'e': e.easing?.type}).toList(),
              'rotDeg': v.rotDeg.map((e) => {'t': e.t, 'v': e.v, 'e': e.easing?.type}).toList(),
            },
          ),
        ),
        'anchorTracks': i.anchorTracks.map((k, list) => MapEntry(k, list.map((e)=> {'t': e.t, 'v': e.v.toJson()}).toList())),
      };

  Instance _instanceFromJson(Map<String, dynamic> j) {
    final at = <String, AttTrack>{};
    final m = j['attachmentTracks'] as Map<String, dynamic>?;
    if (m != null) {
      for (final entry in m.entries) {
        final v = entry.value as Map<String, dynamic>;
        final sc = (v['scale'] as List? ?? []).map((e) => KeyF<Vec2>(e['t'], Vec2.fromJson(e['v']), easing: e['e'] != null ? Easing(e['e']) : null)).toList();
        final op = (v['opacity'] as List? ?? []).map((e) => KeyF<double>(e['t'], (e['v'] as num).toDouble(), easing: e['e'] != null ? Easing(e['e']) : null)).toList();
        final ti = (v['tint'] as List? ?? []).map((e) => KeyF<int>(e['t'], e['v'] as int, easing: e['e'] != null ? Easing(e['e']) : null)).toList();
        final fr = (v['frame'] as List? ?? []).map((e) => KeyF<double>(e['t'], (e['v'] as num).toDouble(), easing: e['e'] != null ? Easing(e['e']) : null)).toList();
        final of = (v['offset'] as List? ?? []).map((e) => KeyF<Vec2>(e['t'], Vec2.fromJson(e['v']), easing: e['e'] != null ? Easing(e['e']) : null)).toList();
        final rd = (v['rotDeg'] as List? ?? []).map((e) => KeyF<double>(e['t'], (e['v'] as num).toDouble(), easing: e['e'] != null ? Easing(e['e']) : null)).toList();
        at[entry.key] = AttTrack(scale: sc, opacity: op, tint: ti, frameIndex: fr, offset: of, rotDeg: rd);
      }
    }
    final poles = <String, Vec2>{};
    final mp = j['ikPoles'] as Map<String, dynamic>?;
    if (mp != null) {
      for (final e in mp.entries) {
        final v = e.value as Map<String, dynamic>;
        poles[e.key] = Vec2.fromJson(v);
      }
    }
    return Instance(
      id: j['id'],
      name: j['name'] ?? 'Layer',
      modelId: j['modelId'],
      base: Transform2D(
        pos: Vec2.fromJson(j['base']['pos']),
        rotDeg: (j['base']['rotDeg'] as num).toDouble(),
        scale: Vec2.fromJson(j['base']['scale']),
      ),
      baseTrack: j['baseTrack'] != null ? _trackFromJson(j['baseTrack']) : null,
      visible: (j['visible'] ?? true) as bool,
      locked: (j['locked'] ?? false) as bool,
      pivot: j['pivot'] != null ? Vec2.fromJson(j['pivot']) : const Vec2(0, 0),
      parentId: j['parentId'],
      ikPoles: poles,
      lineWidthScale: (j['lineWidthScale'] as num?)?.toDouble() ?? 1.0,
      boneTracks: (j['boneTracks'] as Map<String, dynamic>).map((k, v) => MapEntry(k, _trackFromJson(v))),
      attachmentTracks: at,
      anchorTracks: ((j['anchorTracks'] as Map<String,dynamic>?) ?? const {}).map(
        (k,v) => MapEntry(k, (v as List).map((e)=> KeyF<Vec2>(e['t'] as int, Vec2.fromJson(e['v']))).toList())
      ),
      tags: ((j['tags'] as List?)?.cast<String>()) ?? const [],
    );
  }

  // ------------ raster layer ------------
  Future<Model> createRasterLayer({required int width, required int height}) async {
    final id = _uuid.v4();
    final imgPath = path.join(imagesDir.path, '$id.png');

    final recorder = ui.PictureRecorder();
    ui.Canvas(recorder); // no drawing; create empty picture
    // Transparent background by default (no fill)
    final pic = recorder.endRecording();
    final img = await pic.toImage(width, height);
    final bytes = await img.toByteData(format: ui.ImageByteFormat.png);
    if (bytes == null) {
      throw Exception('Failed to encode empty raster image');
    }
    await File(imgPath).writeAsBytes(bytes.buffer.asUint8List());
    await _ensureImageDecoded(imgPath);

    final m = Model(
      id: id,
      name: 'Raster $width x $height',
      bones: const [Bone(id: 'root', parentId: null, pivot: Vec2(0, 0), bind: Transform2D())],
      attachments: [Attachment(id: 'layer', boneId: 'root', type: PrimType.image, a: const Vec2(0, 0), b: Vec2(width.toDouble(), height.toDouble()), imagePath: imgPath)],
    );
    await saveUserModel(m);
    return m;
  }

  Map<String, dynamic> _trackToJson(TrackTransform t) => {
        'pos': t.pos.map((e) => {'t': e.t, 'v': e.v.toJson(), 'e': e.easing?.type}).toList(),
        'rot': t.rotDeg.map((e) => {'t': e.t, 'v': e.v, 'e': e.easing?.type}).toList(),
        'scale': t.scale.map((e) => {'t': e.t, 'v': e.v.toJson(), 'e': e.easing?.type}).toList(),
      };

  TrackTransform _trackFromJson(Map<String, dynamic> j) => TrackTransform(
        pos: (j['pos'] as List).map((e) => KeyF<Vec2>(e['t'], Vec2.fromJson(e['v']), easing: e['e'] != null ? Easing(e['e']) : null)).toList(),
        rotDeg: (j['rot'] as List).map((e) => KeyF<double>(e['t'], (e['v'] as num).toDouble(), easing: e['e'] != null ? Easing(e['e']) : null)).toList(),
        scale: (j['scale'] as List).map((e) => KeyF<Vec2>(e['t'], Vec2.fromJson(e['v']), easing: e['e'] != null ? Easing(e['e']) : null)).toList(),
      );

  // ------------ image helpers ------------
  Future<void> _ensureImageDecoded(String absPath) async {
    if (images.containsKey(absPath)) return;
    try {
      final f = File(absPath);
      if (!await f.exists()) return;
      final bytes = await f.readAsBytes();
      final codec = await ui.instantiateImageCodec(Uint8List.fromList(bytes));
      final frame = await codec.getNextFrame();
      codec.dispose();
      final img = frame.image;
      images[absPath] = img;
      try {
        final bd = await img.toByteData(format: ui.ImageByteFormat.rawRgba);
        if (bd != null) {
          final wpx = img.width;
          final hpx = img.height;
          final cx = (wpx ~/ 2).clamp(0, wpx - 1);
          final cy = (hpx ~/ 2).clamp(0, hpx - 1);
          final idx = (cy * wpx + cx) * 4;
          final r = bd.getUint8(idx);
          final g = bd.getUint8(idx + 1);
          final b = bd.getUint8(idx + 2);
          imageCenterLuma[absPath] = (0.2126 * r + 0.7152 * g + 0.0722 * b) / 255.0;
        }
      } catch (_) {}
    } catch (_) {}
  }

  Future<String> importImageToLibrary(String srcPath) async {
    final ext = path.extension(srcPath);
    final id = _uuid.v4();
    final dst = path.join(imagesDir.path, '$id$ext');
    await File(srcPath).copy(dst);
    await _ensureImageDecoded(dst);
    return dst;
  }

  Future<String> addImageBytes(Uint8List bytes, {String ext = '.png'}) async {
    final id = _uuid.v4();
    final dst = path.join(imagesDir.path, '$id$ext');
    await File(dst).writeAsBytes(bytes);
    await _ensureImageDecoded(dst);
    return dst;
  }

  Future<Model> createImageModel(String srcPath) async {
    final stored = await importImageToLibrary(srcPath);
    final img = images[stored];
    final w = (img?.width ?? 256).toDouble();
    final h = (img?.height ?? 256).toDouble();
    final m = Model(
      id: _uuid.v4(),
      name: path.basename(srcPath),
      bones: const [Bone(id: 'root', parentId: null, pivot: Vec2(0, 0), bind: Transform2D())],
      attachments: [Attachment(id: 'img', boneId: 'root', type: PrimType.image, a: const Vec2(0, 0), b: Vec2(w, h), imagePath: stored)],
    );
    await saveUserModel(m);
    return m;
  }

  Future<Model> createImageModelFromBytes(
    Uint8List bytes, {
    String name = 'Image',
    String ext = '.png',
  }) async {
    final safeExt = ext.trim().isEmpty ? '.png' : (ext.startsWith('.') ? ext : '.$ext');
    final stored = await addImageBytes(bytes, ext: safeExt);
    final img = images[stored];
    final w = (img?.width ?? 256).toDouble();
    final h = (img?.height ?? 256).toDouble();
    final m = Model(
      id: _uuid.v4(),
      name: name,
      bones: const [Bone(id: 'root', parentId: null, pivot: Vec2(0, 0), bind: Transform2D())],
      attachments: [Attachment(id: 'img', boneId: 'root', type: PrimType.image, a: const Vec2(0, 0), b: Vec2(w, h), imagePath: stored)],
    );
    await saveUserModel(m);
    return m;
  }

  Future<Model> createSpriteModel(List<String> paths) async {
    if (paths.isEmpty) throw Exception('이미지가 없습니다');
    final stored = <String>[];
    for (final pth in paths) {
      stored.add(await importImageToLibrary(pth));
    }
    final img = images[stored.first];
    final w = (img?.width ?? 128).toDouble();
    final h = (img?.height ?? 128).toDouble();
    final m = Model(
      id: _uuid.v4(),
      name: 'Sprite ${path.basename(paths.first)}(${paths.length})',
      bones: const [Bone(id: 'root', parentId: null, pivot: Vec2(0, 0), bind: Transform2D())],
      attachments: [Attachment(id: 'sprite', boneId: 'root', type: PrimType.image, a: const Vec2(0, 0), b: Vec2(w, h), imagePath: stored.first, spriteFrames: stored)],
    );
    await saveUserModel(m);
    return m;
  }

  Future<Model> createSpriteModelFromBytes(
    List<Uint8List> frames, {
    String name = 'Sprite',
    String ext = '.png',
  }) async {
    if (frames.isEmpty) throw Exception('이미지가 없습니다');
    final safeExt = ext.trim().isEmpty ? '.png' : (ext.startsWith('.') ? ext : '.$ext');
    final stored = <String>[];
    for (final b in frames) {
      stored.add(await addImageBytes(b, ext: safeExt));
    }
    final img = images[stored.first];
    final w = (img?.width ?? 128).toDouble();
    final h = (img?.height ?? 128).toDouble();
    final m = Model(
      id: _uuid.v4(),
      name: '$name(${stored.length})',
      bones: const [Bone(id: 'root', parentId: null, pivot: Vec2(0, 0), bind: Transform2D())],
      attachments: [Attachment(id: 'sprite', boneId: 'root', type: PrimType.image, a: const Vec2(0, 0), b: Vec2(w, h), imagePath: stored.first, spriteFrames: stored)],
    );
    await saveUserModel(m);
    return m;
  }

  // ------------ projects ------------
  Future<Project> createProject(String name) async {
    final pjt = Project(id: _uuid.v4(), name: name, sequences: [], lastOpened: DateTime.now().millisecondsSinceEpoch, favorite: false);
    projects.add(pjt);
    await _saveProjects();
    return pjt;
  }

  Future<Sequence> createSequence(Project p, String name) async {
    return createSequenceWithSetting(p, name, const SequenceSetting());
  }

  Future<Sequence> createSequenceWithSetting(Project p, String name, SequenceSetting setting) async {
    final adjustedSetting = (Platform.isAndroid || Platform.isIOS) && setting.hitTolerancePx == 40.0
        ? setting.copyWith(hitTolerancePx: _defaultHitTolerancePx())
        : setting;
    final s = Sequence(id: _uuid.v4(), name: name, setting: adjustedSetting, onion: const OnionSkinSetting(), instances: [], audio: const []);
    final idx = projects.indexWhere((x) => x.id == p.id);
    final next = Project(
      id: p.id,
      name: p.name,
      sequences: [...p.sequences, s],
      lastOpened: p.lastOpened,
      favorite: p.favorite,
    );
    if (idx < 0) {
      projects.add(next);
    } else {
      projects[idx] = next;
    }
    await _saveProjects();
    return s;
  }

  Future<void> renameSequence(Project p, Sequence s, String newName) async {
    final pi = projects.indexWhere((x) => x.id == p.id);
    if (pi < 0) return;
    final newSeqs = p.sequences.map((e) => e.id == s.id ? e.copyWith(name: newName) : e).toList();
    projects[pi] = Project(id: p.id, name: p.name, sequences: newSeqs, lastOpened: p.lastOpened, favorite: p.favorite);
    await _saveProjects();
  }

  Future<void> deleteSequence(Project p, Sequence s) async {
    final pi = projects.indexWhere((x) => x.id == p.id);
    if (pi < 0) return;
    final newSeqs = List<Sequence>.from(p.sequences)..removeWhere((e) => e.id == s.id);
    projects[pi] = Project(id: p.id, name: p.name, sequences: newSeqs, lastOpened: p.lastOpened, favorite: p.favorite);
    await _saveProjects();
  }

  Future<Sequence> duplicateSequence(Project p, Sequence s, {String? name}) async {
    final pi = projects.indexWhere((x) => x.id == p.id);
    if (pi < 0) return s;
    final dup = Sequence(
      id: _uuid.v4(),
      name: name ?? 'Copy of ${s.name}',
      setting: s.setting,
      onion: s.onion,
      instances: List<Instance>.from(s.instances),
      audio: List<AudioTrack>.from(s.audio),
    );
    final newSeqs = <Sequence>[];
    for (final e in p.sequences) {
      newSeqs.add(e);
      if (e.id == s.id) newSeqs.add(dup);
    }
    projects[pi] = Project(id: p.id, name: p.name, sequences: newSeqs, lastOpened: p.lastOpened, favorite: p.favorite);
    await _saveProjects();
    return dup;
  }

  Future<void> upsertProject(Project p) async {
    final idx = projects.indexWhere((x) => x.id == p.id);
    if (idx >= 0) {
      projects[idx] = p;
    } else {
      projects.add(p);
    }
    await _saveProjects();
  }

  Future<void> renameProject(Project p, String newName) async {
    final idx = projects.indexWhere((x) => x.id == p.id);
    if (idx < 0) return;
    projects[idx] = Project(id: p.id, name: newName, sequences: p.sequences, lastOpened: p.lastOpened, favorite: p.favorite);
    await _saveProjects();
  }

  Future<void> deleteProject(Project p) async {
    projects.removeWhere((x) => x.id == p.id);
    await _saveProjects();
    try {
      final dir = Directory(path.join(autosaveDir.path, p.id));
      if (dir.existsSync()) dir.deleteSync(recursive: true);
    } catch (_) {}
  }

  Future<void> markProjectOpened(Project p) async {
    final idx = projects.indexWhere((x) => x.id == p.id);
    if (idx < 0) return;
    final now = DateTime.now().millisecondsSinceEpoch;
    projects[idx] = Project(id: p.id, name: p.name, sequences: p.sequences, lastOpened: now, favorite: p.favorite);
    await _saveProjects();
  }

  Future<void> setProjectFavorite(Project p, bool fav) async {
    final idx = projects.indexWhere((x) => x.id == p.id);
    if (idx < 0) return;
    projects[idx] = Project(id: p.id, name: p.name, sequences: p.sequences, lastOpened: p.lastOpened, favorite: fav);
    await _saveProjects();
  }

  // ------------ .sma bundle ------------
  Future<File> exportBundle(Project proj) async {
    final tmp = await getTemporaryDirectory();
    final outFile = File(path.join(tmp.path, 'StickMotion_${proj.name}_${DateTime.now().millisecondsSinceEpoch}.sma'));
    final arch = Archive();

    final usedModelIds = <String>{};
    for (final sequence in proj.sequences) {
      for (final instance in sequence.instances) {
        usedModelIds.add(instance.modelId);
      }
    }

    for (final mid in usedModelIds) {
      if (mid == 'stickman') continue;
      final m = models[mid];
      if (m != null) {
        final j = m.toJson();
        final imagesToAdd = <String, String>{};
        int idx = 0;
        for (final a in (j['attachments'] as List)) {
          if (a['type'] == 'image') {
            if (a['imagePath'] != null) {
              final abs = a['imagePath'] as String;
              final rel = 'images/${mid}_$idx${path.extension(abs)}';
              a['imagePath'] = rel;
              imagesToAdd[abs] = rel;
              idx += 1;
            }
            if (a['spriteFrames'] != null) {
              final frames = (a['spriteFrames'] as List).map((e) => e.toString()).toList();
              final newFrames = <String>[];
              for (int fi = 0; fi < frames.length; fi++) {
                final abs = frames[fi];
                final rel = 'images/${mid}_spr_$fi${path.extension(abs)}';
                imagesToAdd[abs] = rel;
                newFrames.add(rel);
              }
              a['spriteFrames'] = newFrames;
            }
          }
        }
        final data = const JsonEncoder.withIndent('  ').convert(j);
        arch.addFile(ArchiveFile('models/$mid.json', data.length, utf8.encode(data)));
        for (final e in imagesToAdd.entries) {
          final f = File(e.key);
          if (await f.exists()) {
            arch.addFile(ArchiveFile(e.value, await f.length(), await f.readAsBytes()));
          }
        }
      }
    }

    final projMap = _projectToJson(proj);
    final audioFiles = <String, String>{};
    int idxA = 0;
    for (final s in (projMap['sequences'] as List)) {
      for (final a in (s['audio'] as List)) {
        final op = a['path'] as String;
        final bn = path.basename(op);
        final rel = 'audio/${idxA}_$bn';
        a['path'] = rel;
        idxA += 1;
        audioFiles[op] = rel;
      }
    }
    final projJson = const JsonEncoder.withIndent('  ').convert({'version': 1, 'project': projMap});
    arch.addFile(ArchiveFile('project.json', projJson.length, utf8.encode(projJson)));

    for (final entry in audioFiles.entries) {
      final f = File(entry.key);
      if (await f.exists()) {
        final bytes = await f.readAsBytes();
        arch.addFile(ArchiveFile(entry.value, bytes.length, bytes));
      }
    }

    final encoded = ZipEncoder().encode(arch);
    if (encoded == null) {
      throw Exception('Failed to encode project bundle');
    }
    await outFile.writeAsBytes(encoded);
    return outFile;
  }

  // -------- autosave snapshots --------
  Directory get autosaveDir => Directory(path.join(appDir.path, 'autosave'));

  Future<void> autoSaveProjectSnapshot(Project proj, {int keepLast = 10}) async {
    try {
      final dir = Directory(path.join(autosaveDir.path, proj.id))..createSync(recursive: true);
      final ts = DateTime.now().millisecondsSinceEpoch;
      final file = File(path.join(dir.path, 'snapshot_$ts.json'));
      final projJson = const JsonEncoder.withIndent('  ').convert({'version': 1, 'project': _projectToJson(proj)});
      await file.writeAsString(projJson);
      // prune old
      final files = dir.listSync().whereType<File>().toList()
        ..sort((a,b) => b.path.compareTo(a.path));
      for (int i = keepLast; i < files.length; i++) {
        try { files[i].deleteSync(); } catch (_) {}
      }
    } catch (_) {}
  }

  Future<Project> importBundle(File file) async {
    final bytes = await file.readAsBytes();
    final arch = ZipDecoder().decodeBytes(bytes);
    Map<String, dynamic>? projJson;
    final modelsDir = Directory(path.join(appDir.path, 'models'))..createSync(recursive: true);
    final audioDir = Directory(path.join(appDir.path, 'shared_audio'))..createSync(recursive: true);
    final imgsDir  = imagesDir..createSync(recursive: true);

    final pendingModelFiles = <ArchiveFile>[];
    for (final f in arch.files) {
      if (f.isFile) {
        if (f.name == 'project.json') {
          projJson = jsonDecode(utf8.decode(f.content as List<int>)) as Map<String, dynamic>;
        } else if (f.name.startsWith('models/')) {
          pendingModelFiles.add(f);
        } else if (f.name.startsWith('audio/')) {
          final out = File(path.join(audioDir.path, path.basename(f.name)));
          await out.writeAsBytes(f.content as List<int>);
        } else if (f.name.startsWith('images/')) {
          final out = File(path.join(imgsDir.path, path.basename(f.name)));
          await out.writeAsBytes(f.content as List<int>);
        }
      }
    }
    if (projJson == null) throw Exception('bundle missing project.json');
    final pm = projJson['project'] as Map<String, dynamic>;

    for (final s in (pm['sequences'] as List)) {
      for (final a in (s['audio'] as List)) {
        final rel = a['path'] as String;
        if (rel.startsWith('audio/')) {
          a['path'] = path.join(audioDir.path, path.basename(rel));
        }
      }
    }

    for (final archModel in pendingModelFiles) {
      final j = jsonDecode(utf8.decode(archModel.content as List<int>)) as Map<String, dynamic>;
      for (final a in (j['attachments'] as List)) {
        if (a['type'] == 'image') {
          if (a['imagePath'] != null && (a['imagePath'] as String).startsWith('images/')) {
            final rel = a['imagePath'] as String;
            final abs = path.join(imgsDir.path, path.basename(rel));
            a['imagePath'] = abs;
            await _ensureImageDecoded(abs);
          }
          if (a['spriteFrames'] != null) {
            final fr = (a['spriteFrames'] as List).map((e) => e.toString()).toList();
            final absList = <String>[];
            for (final rel in fr) {
              final abs = path.join(imgsDir.path, path.basename(rel));
              absList.add(abs);
              await _ensureImageDecoded(abs);
            }
            a['spriteFrames'] = absList;
          }
        }
      }
      final out = File(path.join(modelsDir.path, path.basename(archModel.name)));
      await out.writeAsString(const JsonEncoder.withIndent('  ').convert(j));
      final m = Model.fromJson(j);
      models[m.id] = m;
    }

    final imported0 = _projectFromJson(pm);
    final imported = Project(id: imported0.id, name: imported0.name, sequences: imported0.sequences, lastOpened: DateTime.now().millisecondsSinceEpoch, favorite: false);
    projects.add(imported);
    // Normalize to 1-based frames for safety
    _migrateOneBasedFrames();
    await _saveProjects();
    return projects.last;
  }

  Future<void> _ensureStickmanComplete() async {
    try {
      final m = models['stickman'];
      if (m == null) return;
      bool has(String id) => m.attachments.any((a) => a.id == id);
      final requiredIds = [
        'head_circle','torso_line',
        'l_upper_arm_line','l_lower_arm_line','r_upper_arm_line','r_lower_arm_line',
        'l_thigh_line','l_shin_line','r_thigh_line','r_shin_line'
      ];
      final joints = [
        'l_shoulder_circle','l_elbow_circle','l_wrist_circle',
        'r_shoulder_circle','r_elbow_circle','r_wrist_circle',
        'l_hip_circle','l_knee_circle','l_ankle_circle',
        'r_hip_circle','r_knee_circle','r_ankle_circle',
      ];
      final missingMain = requiredIds.any((id) => !has(id));
      final missingJoints = joints.any((id) => !has(id));
      if (missingMain || missingJoints) {
        await applyStickProfile(const StickProfile());
      }
    } catch (_) {}
  }
}

class PoseMeta {
  final List<String> tags;
  final bool favorite;
  const PoseMeta({required this.tags, required this.favorite});
  Map<String, dynamic> toJson() => {
    'tags': tags,
    'favorite': favorite,
  };
  factory PoseMeta.fromJson(Map<String, dynamic> j) => PoseMeta(
    tags: (j['tags'] as List? ?? const []).map((e) => e.toString()).toList(),
    favorite: (j['favorite'] as bool?) ?? false,
  );
}






