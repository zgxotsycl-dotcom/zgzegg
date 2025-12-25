import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';

class NativeMp4Encoder {
  static const MethodChannel _method = MethodChannel('native_video_export');
  static const EventChannel _progress = EventChannel('native_video_export/progress');

  static Future<void> encode({
    required Directory framesDir,
    required File outFile,
    required int width,
    required int height,
    required int fps,
    List<Map<String, dynamic>> audio = const [],
    void Function(double)? onProgress,
  }) async {
    StreamSubscription? sub;
    if (onProgress != null) {
      sub = _progress.receiveBroadcastStream().listen((event) {
        try {
          if (event is double) {
            onProgress(event);
          } else if (event is Map && event['progress'] is num) {
            onProgress((event['progress'] as num).toDouble());
          }
        } catch (_) {}
      }, onError: (_) {});
    }
    try {
      await _method.invokeMethod('encodeMp4', {
        'framesDir': framesDir.path,
        'outPath': outFile.path,
        'width': width,
        'height': height,
        'fps': fps,
        'audio': audio,
      });
    } finally {
      await sub?.cancel();
    }
  }
}
