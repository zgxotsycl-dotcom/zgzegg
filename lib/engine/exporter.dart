import 'dart:io';
import 'dart:async';
import 'dart:ui' as ui;
import 'dart:io' show Platform, Process;
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import '../data/models.dart';
import 'renderer.dart';
// FFmpeg plugin removed for this build to allow offline install on Android.
import 'native_encoder.dart';

class ExportResult {
  final File file;
  final Directory framesDir;
  ExportResult(this.file, this.framesDir);
}

class ExportCancelled implements Exception {
  const ExportCancelled();
  @override
  String toString() => 'ExportCancelled';
}

class ExportCancelToken {
  final ValueNotifier<bool> cancelled = ValueNotifier(false);
  void cancel() => cancelled.value = true;
}

class Exporter {
  static Future<Directory> exportSequenceToPngs({
    required Sequence seq,
    required Map<String, Model> models,
    required Map<String, ui.Image> images,
    required int totalFrames,
    int? startFrame,
    int? endFrame,
    int? overrideFps,
    int? overrideWidth,
    int? overrideHeight,
    void Function(int, int)? onProgress,
    ExportCancelToken? cancelToken,
  }) async {
    final dir = await getTemporaryDirectory();
    final framesDir = Directory('${dir.path}/stickmotion_frames');
    if (framesDir.existsSync()) framesDir.deleteSync(recursive: true);
    framesDir.createSync(recursive: true);

    final start = (startFrame ?? 1).clamp(1, totalFrames);
    final end = (endFrame ?? totalFrames).clamp(1, totalFrames);
    final count = (end - start + 1).clamp(0, totalFrames);

    // Ensure even dimensions for YUV420p encoders (e.g., libx264)
    int wi = (overrideWidth ?? seq.setting.width);
    int hi = (overrideHeight ?? seq.setting.height);
    if (wi.isOdd) wi += 1;
    if (hi.isOdd) hi += 1;
    final w = wi.toDouble();
    final h = hi.toDouble();
    final fps = (overrideFps ?? seq.setting.fps);

    // Precompute background center luma if background image exists
    double? bgCenterLuma;
    if (seq.setting.backgroundImage != null) {
      final bgImg = images[seq.setting.backgroundImage!];
      if (bgImg != null) {
        try {
          final bd = await bgImg.toByteData(format: ui.ImageByteFormat.rawRgba);
          if (bd != null) {
            final wpx = bgImg.width;
            final hpx = bgImg.height;
            final cx = (wpx ~/ 2).clamp(0, wpx - 1);
            final cy = (hpx ~/ 2).clamp(0, hpx - 1);
            final idx = (cy * wpx + cx) * 4;
            final r = bd.getUint8(idx);
            final g = bd.getUint8(idx + 1);
            final b = bd.getUint8(idx + 2);
            bgCenterLuma = (0.2126 * r + 0.7152 * g + 0.0722 * b) / 255.0;
          }
        } catch (_) {}
      }
    }

    for (int fi = 0; fi < count; fi++) {
      if (cancelToken?.cancelled.value == true) {
        throw const ExportCancelled();
      }
      final frameNo = start + fi;
      final t = frameNo.toDouble();
      final img = Renderer.paintFrame(
        seq: seq,
        models: models,
        images: images,
        tFrame: t,
        size: ui.Size(w, h),
        showHelperJoints: false,
        drawGrid: false,
        bgCenterLuma: bgCenterLuma,
      );
      final bytes = await img.toByteData(format: ui.ImageByteFormat.png);
      if (bytes == null) {
        throw Exception('Failed to encode frame ${fi + 1} to PNG bytes');
      }
      final f = File('${framesDir.path}/frame_${fi.toString().padLeft(6, '0')}.png');
      await f.writeAsBytes(bytes.buffer.asUint8List());
      if (onProgress != null) onProgress(fi + 1, count);
    }
    return framesDir;
  }
  static Future<ExportResult> exportSequenceToMp4({
    required Sequence seq,
    required Map<String, Model> models,
    required Map<String, ui.Image> images,
    required int totalFrames,
    int? startFrame,
    int? endFrame,
    int? overrideFps,
    int? overrideWidth,
    int? overrideHeight,
    void Function(int, int)? onProgress,
    void Function(double)? onEncodingProgress,
    ExportCancelToken? cancelToken,
    bool cleanupFrames = true,
  }) async {
    final dir = await getTemporaryDirectory();
    final framesDir = Directory('${dir.path}/stickmotion_frames');
    if (framesDir.existsSync()) framesDir.deleteSync(recursive: true);
    framesDir.createSync(recursive: true);

    final start = (startFrame ?? 1).clamp(1, totalFrames);
    final end = (endFrame ?? totalFrames).clamp(1, totalFrames);
    final count = (end - start + 1).clamp(0, totalFrames);

    // Ensure even dimensions for YUV420p encoders (e.g., libx264)
    int wi = (overrideWidth ?? seq.setting.width);
    int hi = (overrideHeight ?? seq.setting.height);
    if (wi.isOdd) wi += 1;
    if (hi.isOdd) hi += 1;
    final w = wi.toDouble();
    final h = hi.toDouble();
    final fps = (overrideFps ?? seq.setting.fps);

    // Precompute background center luma if background image exists
    double? bgCenterLuma;
    if (seq.setting.backgroundImage != null) {
      final bgImg = images[seq.setting.backgroundImage!];
      if (bgImg != null) {
        try {
          final bd = await bgImg.toByteData(format: ui.ImageByteFormat.rawRgba);
          if (bd != null) {
            final wpx = bgImg.width;
            final hpx = bgImg.height;
            final cx = (wpx ~/ 2).clamp(0, wpx - 1);
            final cy = (hpx ~/ 2).clamp(0, hpx - 1);
            final idx = (cy * wpx + cx) * 4;
            final r = bd.getUint8(idx);
            final g = bd.getUint8(idx + 1);
            final b = bd.getUint8(idx + 2);
            bgCenterLuma = (0.2126 * r + 0.7152 * g + 0.0722 * b) / 255.0;
          }
        } catch (_) {}
      }
    }

    for (int fi = 0; fi < count; fi++) {
      if (cancelToken?.cancelled.value == true) {
        throw const ExportCancelled();
      }
      final frameNo = start + fi;
      final t = frameNo.toDouble();
      final img = Renderer.paintFrame(
        seq: seq,
        models: models,
        images: images,
        tFrame: t,
        size: ui.Size(w, h),
        showHelperJoints: false,
        drawGrid: false,
        bgCenterLuma: bgCenterLuma,
      );
      final bytes = await img.toByteData(format: ui.ImageByteFormat.png);
      if (bytes == null) {
        throw Exception('Failed to encode frame ${fi + 1} to PNG bytes');
      }
      final f = File('${framesDir.path}/frame_${fi.toString().padLeft(6, '0')}.png');
      await f.writeAsBytes(bytes.buffer.asUint8List());
      if (onProgress != null) onProgress(fi + 1, count);
    }

    final out = File('${dir.path}/export_${DateTime.now().millisecondsSinceEpoch}.mp4');
    // fps already computed above

    if (Platform.isAndroid || Platform.isIOS) {
      final audioList = seq.audio
          .where((a) => !a.mute)
          .map((a) => {
                'path': a.path,
                'offsetSec': a.offsetSec,
                'gain': a.gain,
                'mute': a.mute,
              })
          .toList();
      await NativeMp4Encoder.encode(
        framesDir: framesDir,
        outFile: out,
        width: wi,
        height: hi,
        fps: fps,
        audio: audioList,
        onProgress: onEncodingProgress,
      );
    } else {
      // Desktop/server: try system ffmpeg
      try {
        final args = [
          '-y',
          '-r', '$fps',
          '-i', '${framesDir.path}${Platform.pathSeparator}frame_%06d.png',
          '-vf', 'fps=$fps,format=yuv420p',
          '-c:v', 'libx264',
          '-preset', 'veryfast',
          '-pix_fmt', 'yuv420p',
          out.path,
        ];
        final proc = await Process.run('ffmpeg', args, runInShell: true);
        if (proc.exitCode != 0) {
          throw Exception('ffmpeg failed or missing. stderr=\n${proc.stderr}');
        }
      } catch (e) {
        throw Exception('ffmpeg not found: $e');
      }
    }

    // Optionally cleanup temporary frames to save storage on long projects
    try {
      if (cleanupFrames && (Platform.isAndroid || Platform.isIOS)) {
        if (framesDir.existsSync()) {
          framesDir.deleteSync(recursive: true);
        }
      }
    } catch (_) {}
    return ExportResult(out, framesDir);
  }

}
