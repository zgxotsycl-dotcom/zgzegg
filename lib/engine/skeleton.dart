import 'package:vector_math/vector_math_64.dart' as vm;
import '../data/models.dart';
import 'animation_engine.dart';

class SkeletonUtil {
  static vm.Matrix4 worldOf(
    Bone b,
    Map<String, Transform2D> pose,
    Map<String, Bone> bones,
    Map<String, vm.Matrix4> cache,
  ) {
    if (cache.containsKey(b.id)) return cache[b.id]!;
    vm.Matrix4 parent = vm.Matrix4.identity();
    if (b.parentId != null) {
      final pb = bones[b.parentId]!;
      parent = worldOf(pb, pose, bones, cache);
    }
    final bind = composeMatrix(b.bind, b.pivot);
    final off = composeMatrix(pose[b.id] ?? const Transform2D(), b.pivot);
    final w = parent * bind * off;
    cache[b.id] = w;
    return w;
  }
}

