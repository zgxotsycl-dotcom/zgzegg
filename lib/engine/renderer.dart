import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart' show Colors;
import 'package:vector_math/vector_math_64.dart' as vm;
import '../data/models.dart';
import 'animation_engine.dart';
import 'skeleton.dart';

class Renderer {
  static ui.Image paintFrame({
    required Sequence seq,
    required Map<String, Model> models,
    required Map<String, ui.Image> images,
    required double tFrame,
    required ui.Size size,
    bool interpolate = true,
    bool showHelperJoints = true,
    bool drawGrid = true,
    double? bgCenterLuma,
  }) {
    final recorder = ui.PictureRecorder();
    final canvas = ui.Canvas(recorder);

    // Background: image cover or solid color
    final bgColor = seq.setting.backgroundColor;
    final bgPaint = ui.Paint()..color = bgColor;
    canvas.drawRect(ui.Rect.fromLTWH(0, 0, size.width, size.height), bgPaint);
    final bgImgPath = seq.setting.backgroundImage;
    ui.Color bgForContrast = bgColor;
    if (bgImgPath != null) {
      final bgImg = images[bgImgPath];
      if (bgImg != null) {
        final iw = bgImg.width.toDouble();
        final ih = bgImg.height.toDouble();
        final sx = size.width / iw;
        final sy = size.height / ih;
        final s = sx > sy ? sx : sy; // cover
        final dw = iw * s;
        final dh = ih * s;
        final dx = (size.width - dw) * 0.5;
        final dy = (size.height - dh) * 0.5;
        final src = ui.Rect.fromLTWH(0, 0, iw, ih);
        final dst = ui.Rect.fromLTWH(dx, dy, dw, dh);
        final p = ui.Paint()..filterQuality = ui.FilterQuality.medium;
        canvas.drawImageRect(bgImg, src, dst, p);
        // Use center brightness sample (if provided) to derive a bg contrast color (gray with same luma)
        if (bgCenterLuma != null) {
          final g = (bgCenterLuma.clamp(0.0, 1.0) * 255).round().clamp(0, 255);
          bgForContrast = ui.Color.fromARGB(0xFF, g, g, g);
        }
      }
    }

    // Background grid (optional)
    if (drawGrid) {
      final grid = ui.Paint()
        ..color = const ui.Color(0xFFEFEFEF)
        ..strokeWidth = 1;
      for (double x = 0; x < size.width; x += 20) {
        canvas.drawLine(ui.Offset(x, 0), ui.Offset(x, size.height), grid);
      }
      for (double y = 0; y < size.height; y += 20) {
        canvas.drawLine(ui.Offset(0, y), ui.Offset(size.width, y), grid);
      }
    }

    // Onion skin: draw prev/next frames with tint + falloff
    final prevN = seq.onion.prevFrames;
    final nextN = seq.onion.nextFrames;
    for (int k = prevN; k >= 1; k--) {
      final tt = ((tFrame - k).clamp(1.0, double.infinity) as num).toDouble();
      final alpha = _onionAlpha(seq.onion.opacityFalloff, k);
      for (final inst in seq.instances) {
        if (inst.visible == false) continue;
        final model = models[inst.modelId];
        if (model == null) continue;
        try {
          _paintModel(canvas, inst, model, tt, images, seq, interpolate,
              tint: seq.onion.prevColor.withAlpha((alpha * 255).toInt()),
              showHelperJoints: showHelperJoints,
              bgForContrast: bgForContrast, bgCenterLuma: bgCenterLuma);
        } catch (_) {}
      }
    }
    for (int k = 1; k <= nextN; k++) {
      final tt = (tFrame + k).toDouble();
      final alpha = _onionAlpha(seq.onion.opacityFalloff, k);
      for (final inst in seq.instances) {
        if (inst.visible == false) continue;
        final model = models[inst.modelId];
        if (model == null) continue;
        try {
          _paintModel(canvas, inst, model, tt, images, seq, interpolate,
              tint: seq.onion.nextColor.withAlpha((alpha * 255).toInt()),
              showHelperJoints: showHelperJoints,
              bgForContrast: bgForContrast, bgCenterLuma: bgCenterLuma);
        } catch (_) {}
      }
    }

    // Draw current frame
    for (final inst in seq.instances) {
      if (inst.visible == false) continue;
      final model = models[inst.modelId];
      if (model == null) continue;
      try {
        _paintModel(canvas, inst, model, tFrame, images, seq, interpolate,
            instances: seq.instances, showHelperJoints: showHelperJoints,
            bgForContrast: bgForContrast, bgCenterLuma: bgCenterLuma);
      } catch (_) {}
    }

    final pic = recorder.endRecording();
    return pic.toImageSync(size.width.toInt(), size.height.toInt());
  }

  static void _paintModel(ui.Canvas canvas, Instance inst, Model model, double t, Map<String, ui.Image> images, Sequence seq, bool interpolate, {ui.Color? tint, List<Instance>? instances, bool showHelperJoints = true, ui.Color? bgForContrast, double? bgCenterLuma}) {
    if (model.id == 'stickman' || _isStickFigure(model)) {
      _paintStickman(canvas, inst, model, t, seq, interpolate, tint: tint, instances: instances, showHelperJoints: showHelperJoints, bgForContrast: bgForContrast, bgCenterLuma: bgCenterLuma);
      return;
    }
    final pose = <String, Transform2D>{};
    // Build pose from tracks then override position with anchor when present (anchor -> rot -> fallback)
    final byId = {for (final b in model.bones) b.id: b};
    for (final b in model.bones) {
      final trSrc = inst.boneTracks[b.id];
      final tr = trSrc == null ? const Transform2D() : sampleTransform(trSrc, t, interpolate: interpolate);
      final anchor = _sampleAnchorStep(inst.anchorTracks[b.id], t);
      pose[b.id] = Transform2D(pos: anchor ?? tr.pos, rotDeg: tr.rotDeg, scale: tr.scale);
    }
    final cache = <String, vm.Matrix4>{};
    final bones = byId;

    // Instance world including parenting and pivot
    final instancesById = {for (final x in (instances ?? const <Instance>[])) x.id: x};
    final instWorld = _instanceWorld(inst, instancesById, t, interpolate);

    for (final a in model.attachments) {
      if (!showHelperJoints && a.type == PrimType.circle && a.id != 'head_circle') {
        continue;
      }
      final b = bones[a.boneId];
      if (b == null) continue;
      final m = SkeletonUtil.worldOf(b, pose, bones, cache);
      final mat = instWorld * m;

      final attTr = inst.attachmentTracks[a.id];
      final localScale = attTr == null || attTr.scale.isEmpty ? const Vec2(1, 1) : sampleVec2D(attTr.scale, t);
      final localOffset = attTr == null || attTr.offset.isEmpty ? const Vec2(0, 0) : sampleVec2D(attTr.offset, t);
      final lmat = () {
        if (localOffset.x.abs() < 1e-6 && localOffset.y.abs() < 1e-6) return mat;
        final trans = vm.Matrix4.identity()..translate(localOffset.x, localOffset.y);
        return mat * trans;
      }();

      switch (a.type) {
        case PrimType.circle:
          final p = ui.Paint()
            ..style = ui.PaintingStyle.stroke
            ..strokeWidth = a.strokeWidth * inst.lineWidthScale
            ..color = _strokeColor(a.stroke, tint, seq, bgForContrast: bgForContrast, bgCenterLuma: bgCenterLuma);
          final pf = ui.Paint()
            ..style = ui.PaintingStyle.fill
            ..color = _applyTintColor(a.fill, tint);
          final radius = (a.b.x * localScale.x).abs();
          canvas.drawCircle(_tx(lmat, a.a.o), radius, pf);
          canvas.drawCircle(_tx(lmat, a.a.o), radius, p);
          break;

        case PrimType.rect:
          final r = ui.Rect.fromLTWH(a.a.x, a.a.y, a.b.x, a.b.y);
          final path = ui.Path()..addRect(r);
          final tpath = path.transform(_mat2d(lmat));
          final p = ui.Paint()
            ..style = ui.PaintingStyle.stroke
            ..strokeWidth = a.strokeWidth * inst.lineWidthScale
            ..strokeJoin = ui.StrokeJoin.round
            ..color = _strokeColor(a.stroke, tint, seq, bgForContrast: bgForContrast, bgCenterLuma: bgCenterLuma);
          final pf = ui.Paint()
            ..style = ui.PaintingStyle.fill
            ..color = _applyTintColor(a.fill, tint);
          canvas.drawPath(tpath, pf);
          canvas.drawPath(tpath, p);
          break;

        case PrimType.line:
          canvas.drawLine(
            _tx(lmat, a.a.o),
            _tx(lmat, a.b.o),
            ui.Paint()
              ..style = ui.PaintingStyle.stroke
              ..strokeWidth = a.strokeWidth * inst.lineWidthScale
              ..strokeCap = ui.StrokeCap.round
              ..color = _strokeColor(a.stroke, tint, seq, bgForContrast: bgForContrast, bgCenterLuma: bgCenterLuma),
          );
          break;

        case PrimType.path:
          final p = ui.Paint()
            ..style = ui.PaintingStyle.stroke
            ..strokeWidth = a.strokeWidth * inst.lineWidthScale
            ..strokeCap = ui.StrokeCap.round
            ..strokeJoin = ui.StrokeJoin.round
            ..color = _strokeColor(a.stroke, tint, seq, bgForContrast: bgForContrast, bgCenterLuma: bgCenterLuma);
          final pf = ui.Paint()
            ..style = ui.PaintingStyle.fill
            ..color = _applyTintColor(a.fill, tint);
          final path = ui.Path();
          if (a.subpaths != null && a.subpaths!.isNotEmpty) {
            path.fillType = ui.PathFillType.evenOdd;
            for (final sp in a.subpaths!) {
              if (sp.isEmpty) continue;
              path.moveTo(sp.first.x, sp.first.y);
              for (final pt in sp.skip(1)) { path.lineTo(pt.x, pt.y); }
              path.close();
            }
          } else if (a.points != null && a.points!.isNotEmpty) {
            path.moveTo(a.points!.first.x, a.points!.first.y);
            for (final pt in a.points!.skip(1)) { path.lineTo(pt.x, pt.y); }
            if (a.closed) path.close();
          }
          final tpath = path.transform(_mat2d(lmat));
          canvas.drawPath(tpath, pf);
          canvas.drawPath(tpath, p);
          break;

        case PrimType.image:
          final attTr = inst.attachmentTracks[a.id];
          _drawImage(canvas, mat, a, attTr, t, images, tint: tint);
          break;
      }
    }

    // Debug bone pivot rendering removed to match production visuals
  }

  static bool _isStickFigure(Model m) {
    final need = <String>{
      'torso','head',
      'l_upper_arm','l_lower_arm','r_upper_arm','r_lower_arm',
      'l_thigh','l_shin','r_thigh','r_shin'
    };
    final ids = { for (final b in m.bones) b.id };
    return need.difference(ids).isEmpty;
  }

  static void _paintStickman(ui.Canvas canvas, Instance inst, Model model, double t, Sequence seq, bool interpolate, {ui.Color? tint, List<Instance>? instances, bool showHelperJoints = true, ui.Color? bgForContrast, double? bgCenterLuma}) {
    final byId = {for (final b in model.bones) b.id: b};
    final pose = <String, Transform2D>{};
    // For stickman, allow anchor-based offsets but keep rotation-only kinematics otherwise.
    for (final b in model.bones) {
      final trSrc = inst.boneTracks[b.id];
      final tr = trSrc == null ? const Transform2D() : sampleTransform(trSrc, t, interpolate: interpolate);
      final anchor = _sampleAnchorStep(inst.anchorTracks[b.id], t);
      pose[b.id] = Transform2D(pos: anchor ?? const Vec2(0,0), rotDeg: tr.rotDeg, scale: const Vec2(1,1));
    }
    final cache = <String, vm.Matrix4>{};
    final instWorld = _instanceWorld(inst, {for (final x in (instances ?? const <Instance>[])) x.id: x}, t, interpolate);

    ui.Offset _wp(String id) {
      final b = byId[id]!;
      final m = instWorld * SkeletonUtil.worldOf(b, pose, byId, cache);
      return _tx(m, const ui.Offset(0,0));
    }
    ui.Offset _end(String id, double len) {
      final b = byId[id]!;
      final m = instWorld * SkeletonUtil.worldOf(b, pose, byId, cache);
      return _tx(m, ui.Offset(0, len));
    }
    double _len(String attId, double def){
      final a = model.attachments.where((x)=>x.id==attId);
      return a.isEmpty?def:a.first.b.y.abs();
    }
    final headR = (){ final a = model.attachments.where((x)=>x.id=='head_circle'); return a.isEmpty?20.0:a.first.b.x.abs(); }();
    // Default lengths; per-limb lengths will be looked up by attachment id
    const defArmLen = 60.0;
    const defShinLen = 70.0;

    final baseStroke = tint ?? const ui.Color(0xFF000000);
    final effBg = bgForContrast ?? seq.setting.backgroundColor;
    final minC = _tunedMinContrast(seq.setting.minStrokeContrast, bgCenterLuma);
    final limbColor = seq.setting.autoStrokeContrast
        ? _ensureContrast(baseStroke, effBg, minRatio: minC)
        : baseStroke;
    final limb = ui.Paint()
      ..style = ui.PaintingStyle.stroke
      ..strokeWidth = 4 * inst.lineWidthScale
      ..strokeCap = ui.StrokeCap.round
      ..strokeJoin = ui.StrokeJoin.round
      ..color = limbColor;
    final torsoP = ui.Paint()
      ..style = ui.PaintingStyle.stroke
      ..strokeWidth = 5 * inst.lineWidthScale
      ..strokeCap = ui.StrokeCap.round
      ..strokeJoin = ui.StrokeJoin.round
      ..color = limbColor;
    final joint = ui.Paint()..style=ui.PaintingStyle.fill..color=limbColor;

    // torso: from hip (torso pivot) to neck (head pivot)
    final torsoBase = _wp('torso');
    final headPivot = _wp('head');
    canvas.drawLine(torsoBase, headPivot, torsoP);
    // Shoulders/clavicles removed: arms originate at torso top
    // head circle (center at -headR in head local)
    final headM = instWorld * SkeletonUtil.worldOf(byId['head']!, pose, byId, cache);
    final headCenter = _tx(headM, ui.Offset(0,-headR));
    canvas.drawCircle(headCenter, headR, ui.Paint()..style=ui.PaintingStyle.stroke..strokeWidth=4*inst.lineWidthScale..color=(tint??const ui.Color(0xFF000000)));

    void arm(String upper, String lower){
      final p0 = _wp(upper);
      final p1 = _wp(lower);
      final attId = '${lower}_line';
      final len = _len(attId, defArmLen);
      final p2 = _end(lower, len);
      canvas.drawLine(p0, p1, limb);
      canvas.drawLine(p1, p2, limb);
      if (showHelperJoints){ canvas.drawCircle(p0, 4, joint); canvas.drawCircle(p1, 4, joint); canvas.drawCircle(p2, 3, joint); }
    }
    void leg(String thigh, String shin){
      final p0 = _wp(thigh);
      final p1 = _wp(shin);
      final attId = '${shin}_line';
      final len = _len(attId, defShinLen);
      final p2 = _end(shin, len);
      canvas.drawLine(p0, p1, limb);
      canvas.drawLine(p1, p2, limb);
      if (showHelperJoints){ canvas.drawCircle(p0, 4, joint); canvas.drawCircle(p1, 4, joint); canvas.drawCircle(p2, 3, joint); }
    }
    arm('l_upper_arm','l_lower_arm');
    arm('r_upper_arm','r_lower_arm');
    leg('l_thigh','l_shin');
    leg('r_thigh','r_shin');
  }

  static vm.Matrix4 _instanceWorld(Instance inst, Map<String, Instance> byId, double t, bool interpolate) {
    vm.Matrix4 acc = vm.Matrix4.identity();
    // Build chain from root to this
    final chain = <Instance>[];
    Instance? cur = inst;
    final visited = <String>{};
    while (cur != null) {
      if (visited.contains(cur.id)) break;
      visited.add(cur.id);
      chain.add(cur);
      if (cur.parentId == null) break;
      cur = byId[cur.parentId!];
    }
    for (final it in chain.reversed) {
      final bt = it.baseTrack;
      final tr = bt == null ? it.base : sampleTransform(bt, t, interpolate: interpolate);
      acc = acc * composeMatrix(tr, it.pivot);
    }
    return acc;
  }

  static void _drawImage(ui.Canvas canvas, vm.Matrix4 mat, Attachment a, AttTrack? tr, double t, Map<String, ui.Image> images, {ui.Color? tint}) {
    String? pth = a.imagePath;
    if (a.spriteFrames != null && a.spriteFrames!.isNotEmpty) {
      int idx;
      if (tr != null && tr.frameIndex.isNotEmpty) {
        final v = sampleScalarD(tr.frameIndex, t);
        idx = v.round().clamp(0, a.spriteFrames!.length - 1);
      } else {
        final ti = t.floor();
        final len = a.spriteFrames!.length;
        // 1-based timeline: frame 1 -> sprite index 0
        idx = ((ti - 1) % len + len) % len;
      }
      pth = a.spriteFrames![idx];
    }
    if (pth == null) return;
    final img = images[pth];
    if (img == null) return;

    final sc = tr == null || tr.scale.isEmpty ? const Vec2(1, 1) : sampleVec2D(tr.scale, t);
    final op = tr == null || tr.opacity.isEmpty ? 1.0 : sampleScalarD(tr.opacity, t).clamp(0.0, 1.0);
    final tintKey = tr == null || tr.tint.isEmpty ? const ui.Color(0xFFFFFFFF) : sampleColorI(tr.tint, t);
    final tintColor = tint ?? tintKey;

    final m = mat.storage;
    final tmat = Float64List.fromList([
      m[0], m[1], 0, m[3],
      m[4], m[5], 0, m[7],
      0, 0, 1, 0,
      m[12], m[13], 0, 1,
    ]);
    canvas.save();
    canvas.transform(tmat);

    final w = a.b.x * sc.x;
    final h = a.b.y * sc.y;
    final cx = a.a.x + a.b.x / 2;
    final cy = a.a.y + a.b.y / 2;
    final dst = ui.Rect.fromLTRB(cx - w / 2, cy - h / 2, cx + w / 2, cy + h / 2);
    final src = ui.Rect.fromLTWH(0, 0, img.width.toDouble(), img.height.toDouble());

    final p = ui.Paint()
      ..filterQuality = ui.FilterQuality.high
      ..color = ui.Color.fromARGB((op * 255).round(), 255, 255, 255)
      ..colorFilter = ui.ColorFilter.mode(tintColor, ui.BlendMode.modulate);
    canvas.drawImageRect(img, src, dst, p);
    canvas.restore();
  }

  static ui.Offset _tx(vm.Matrix4 m, ui.Offset o) {
    final v = m.transform3(vm.Vector3(o.dx, o.dy, 0));
    return ui.Offset(v.x, v.y);
  }

  static Float64List _mat2d(vm.Matrix4 mat) => Float64List.fromList([
        mat.entry(0, 0), mat.entry(0, 1), 0, mat.entry(0, 3),
        mat.entry(1, 0), mat.entry(1, 1), 0, mat.entry(1, 3),
        0, 0, 1, 0,
        0, 0, 0, 1,
      ]);

  static double _onionAlpha(double falloff, int k) {
    final f = falloff.clamp(0.0, 1.0);
    return (1.0 * List<double>.generate(k, (_) => f).fold(1.0, (p, e) => p * e)).clamp(0.05, 1.0);
  }

  static ui.Color _applyTintColor(ui.Color base, ui.Color? tint) {
    if (tint == null) return base;
    // Multiply blend approximation in sRGB
    int mult(int a, int b) => ((a * b) / 255).round().clamp(0, 255);
    return ui.Color.fromARGB(
      base.alpha,
      mult(base.red, tint.red),
      mult(base.green, tint.green),
      mult(base.blue, tint.blue),
    );
  }

  static ui.Color _ensureContrast(ui.Color c, ui.Color bg, {double minRatio = 3.0}) {
    double luma(ui.Color x) => (0.2126 * x.red + 0.7152 * x.green + 0.0722 * x.blue) / 255.0;
    double ratio(ui.Color a, ui.Color b) {
      final la = luma(a) + 0.05, lb = luma(b) + 0.05;
      return la > lb ? la / lb : lb / la;
    }
    final r = ratio(c, bg);
    if (r >= minRatio) return c;
    final black = ui.Color.fromARGB(c.alpha, 0, 0, 0);
    final white = ui.Color.fromARGB(c.alpha, 255, 255, 255);
    return ratio(black, bg) >= ratio(white, bg) ? black : white;
  }

  // Step-sample Vec2: returns last key <= t or null if none
  static Vec2? _sampleAnchorStep(List<KeyF<Vec2>>? keys, double t) {
    if (keys == null || keys.isEmpty) return null;
    final sorted = List<KeyF<Vec2>>.from(keys)..sort((a,b)=> a.t.compareTo(b.t));
    if (t <= sorted.first.t) return sorted.first.v;
    if (t >= sorted.last.t) return sorted.last.v;
    for (int i = sorted.length - 1; i >= 0; i--) {
      if (t >= sorted[i].t) return sorted[i].v;
    }
    return sorted.first.v;
  }

  static double _tunedMinContrast(double userMin, double? bgCenterLuma) {
    // Boost contrast demand on mid-gray backgrounds; leave extremes closer to userMin
    if (bgCenterLuma == null) return userMin.clamp(2.0, 7.0);
    final d = (bgCenterLuma - 0.5).abs(); // 0..0.5
    final closeness = (1.0 - (d * 2.0)).clamp(0.0, 1.0); // 0..1
    final extra = 2.0 * closeness; // up to +2.0 when near 0.5
    return (userMin + extra).clamp(2.0, 7.0);
  }

  static ui.Color _strokeColor(ui.Color stroke, ui.Color? tint, Sequence seq, {ui.Color? bgForContrast, double? bgCenterLuma}) {
    final base = tint ?? stroke;
    if (!seq.setting.autoStrokeContrast) return base;
    final effBg = bgForContrast ?? seq.setting.backgroundColor;
    final minC = _tunedMinContrast(seq.setting.minStrokeContrast, bgCenterLuma);
    return _ensureContrast(base, effBg, minRatio: minC);
  }
}
