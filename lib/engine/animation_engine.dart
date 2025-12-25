import 'dart:math' as math;
import 'dart:ui';
import 'package:vector_math/vector_math_64.dart' as vm;
import '../data/models.dart';

double sampleScalarD(List<KeyF<double>> keys, double t) {
  if (keys.isEmpty) return 0.0;
  keys.sort((a, b) => a.t.compareTo(b.t));
  if (t <= keys.first.t) return keys.first.v;
  if (t >= keys.last.t) return keys.last.v;
  for (int i = 0; i < keys.length - 1; i++) {
    final a = keys[i], b = keys[i + 1];
    if (t >= a.t && t <= b.t) {
      final span = (b.t - a.t).toDouble();
      double u = (t - a.t) / span;
      u = _applyEasing(u, b.easing?.type);
      return a.v + (b.v - a.v) * u;
    }
  }
  return keys.last.v;
}

Vec2 sampleVec2D(List<KeyF<Vec2>> keys, double t) {
  if (keys.isEmpty) return const Vec2(0, 0);
  keys.sort((a, b) => a.t.compareTo(b.t));
  if (t <= keys.first.t) return keys.first.v;
  if (t >= keys.last.t) return keys.last.v;
  for (int i = 0; i < keys.length - 1; i++) {
    final a = keys[i], b = keys[i + 1];
    if (t >= a.t && t <= b.t) {
      final span = (b.t - a.t).toDouble();
      double u = (t - a.t) / span;
      u = _applyEasing(u, b.easing?.type);
      return Vec2(a.v.x + (b.v.x - a.v.x) * u, a.v.y + (b.v.y - a.v.y) * u);
    }
  }
  return keys.last.v;
}

Color sampleColorI(List<KeyF<int>> keys, double t) {
  if (keys.isEmpty) return const Color(0xFFFFFFFF);
  keys.sort((a, b) => a.t.compareTo(b.t));
  if (t <= keys.first.t) return Color(keys.first.v);
  if (t >= keys.last.t) return Color(keys.last.v);
  for (int i = 0; i < keys.length - 1; i++) {
    final a = keys[i], b = keys[i + 1];
    if (t >= a.t && t <= b.t) {
      final span = (b.t - a.t).toDouble();
      double u = (t - a.t) / span;
      u = _applyEasing(u, b.easing?.type);
      final ca = Color(a.v), cb = Color(b.v);
      int lerp(int aa, int bb) => (aa + ((bb - aa) * u)).round();
      return Color.fromARGB(
        lerp(ca.alpha, cb.alpha),
        lerp(ca.red, cb.red),
        lerp(ca.green, cb.green),
        lerp(ca.blue, cb.blue),
      );
    }
  }
  return Color(keys.last.v);
}

Transform2D sampleTransform(TrackTransform tr, double t, {bool interpolate = true}) {
  if (interpolate) {
    final pos = tr.pos.isEmpty ? const Vec2(0, 0) : sampleVec2D(tr.pos, t);
    final rot = tr.rotDeg.isEmpty ? 0.0 : sampleScalarD(tr.rotDeg, t);
    final sc = tr.scale.isEmpty ? const Vec2(1, 1) : sampleVec2D(tr.scale, t);
    return Transform2D(pos: pos, rotDeg: rot, scale: sc);
  } else {
    Vec2 stepVec2(List<KeyF<Vec2>> keys, double tt) {
      if (keys.isEmpty) return const Vec2(0,0);
      keys.sort((a,b)=>a.t.compareTo(b.t));
      if (tt <= keys.first.t) return keys.first.v;
      if (tt >= keys.last.t) return keys.last.v;
      for (int i=keys.length-1;i>=0;i--) { if (tt >= keys[i].t) return keys[i].v; }
      return keys.first.v;
    }
    double stepScalar(List<KeyF<double>> keys, double tt) {
      if (keys.isEmpty) return 0.0;
      keys.sort((a,b)=>a.t.compareTo(b.t));
      if (tt <= keys.first.t) return keys.first.v;
      if (tt >= keys.last.t) return keys.last.v;
      for (int i=keys.length-1;i>=0;i--) { if (tt >= keys[i].t) return keys[i].v; }
      return keys.first.v;
    }
    final pos = tr.pos.isEmpty ? const Vec2(0, 0) : stepVec2(tr.pos, t);
    final rot = tr.rotDeg.isEmpty ? 0.0 : stepScalar(tr.rotDeg, t);
    final sc = tr.scale.isEmpty ? const Vec2(1, 1) : stepVec2(tr.scale, t);
    return Transform2D(pos: pos, rotDeg: rot, scale: sc);
  }
}

vm.Matrix4 composeMatrix(Transform2D tr, Vec2 pivot) {
  final m = vm.Matrix4.identity();
  m.translate(tr.pos.x, tr.pos.y);
  m.translate(pivot.x, pivot.y);
  final rad = tr.rotDeg * math.pi / 180.0;
  m.rotateZ(rad);
  m.scale(tr.scale.x, tr.scale.y, 1);
  m.translate(-pivot.x, -pivot.y);
  return m;
}

Offset transformPoint(vm.Matrix4 m, Offset p) {
  final v = m.transform3(vm.Vector3(p.dx, p.dy, 0));
  return Offset(v.x, v.y);
}

double _applyEasing(double u, String? type) {
  if (type == null || type == 'linear') return u.clamp(0.0, 1.0);
  switch (type) {
    case 'easeInOutCubic':
      return u < 0.5 ? 4 * u * u * u : 1 - math.pow(-2 * u + 2, 3) / 2;
    case 'easeInCubic':
      return u * u * u;
    case 'easeOutCubic':
      return 1 - math.pow(1 - u, 3).toDouble();
    default:
      // Support custom cubic-bezier in the format: cubic(x1,y1,x2,y2)
      if (type.startsWith('cubic(') && type.endsWith(')')) {
        try {
          final inner = type.substring(6, type.length - 1);
          final parts = inner.split(',').map((e) => double.parse(e.trim())).toList();
          if (parts.length == 4) {
            return _cubicBezierEase(u.clamp(0.0, 1.0), parts[0], parts[1], parts[2], parts[3]);
          }
        } catch (_) {}
      }
      return u.clamp(0.0, 1.0);
  }
}

// Compute y for cubic-bezier (x1,y1,x2,y2) at input u in [0,1].
double _cubicBezierEase(double u, double x1, double y1, double x2, double y2) {
  // Cubic Bezier parametric functions
  double cx(double t) => 3 * x1 * t * (1 - t) * (1 - t) + 3 * x2 * t * t * (1 - t) + t * t * t;
  double cy(double t) => 3 * y1 * t * (1 - t) * (1 - t) + 3 * y2 * t * t * (1 - t) + t * t * t;
  // Invert x(t)=u by binary search
  double lo = 0.0, hi = 1.0, t = u;
  for (int i = 0; i < 16; i++) {
    final x = cx(t);
    if ((x - u).abs() < 1e-4) break;
    if (x < u) {
      lo = t;
    } else {
      hi = t;
    }
    t = (lo + hi) * 0.5;
  }
  return cy(t).clamp(0.0, 1.0);
}
