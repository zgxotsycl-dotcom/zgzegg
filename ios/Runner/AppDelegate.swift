import Flutter
import UIKit
import AVFoundation

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterStreamHandler {
  private let methodName = "native_video_export"
  private let eventName = "native_video_export/progress"
  private var eventSink: FlutterEventSink?

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    if let controller = window?.rootViewController as? FlutterViewController {
      let method = FlutterMethodChannel(name: methodName, binaryMessenger: controller.binaryMessenger)
      let events = FlutterEventChannel(name: eventName, binaryMessenger: controller.binaryMessenger)
      events.setStreamHandler(self)
      method.setMethodCallHandler { [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) in
        guard call.method == "encodeMp4" else { result(FlutterMethodNotImplemented); return }
        guard let args = call.arguments as? [String: Any],
              let framesDir = args["framesDir"] as? String,
              let outPath = args["outPath"] as? String,
              let width = args["width"] as? Int,
              let height = args["height"] as? Int,
              let fps = args["fps"] as? Int else {
          result(FlutterError(code: "ARG", message: "Bad args", details: nil)); return
        }
        let audio = args["audio"] as? [[String: Any]] ?? []
        DispatchQueue.global(qos: .userInitiated).async {
          do {
            try self?.encodeSequence(framesDir: framesDir, outPath: outPath, width: width, height: height, fps: fps, audio: audio)
            DispatchQueue.main.async { result(true) }
          } catch {
            DispatchQueue.main.async { result(FlutterError(code: "ENCODE_FAIL", message: error.localizedDescription, details: nil)) }
          }
        }
      }
    }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func sendProgress(_ p: Double) {
    eventSink?(p)
  }

  private func encodeSequence(framesDir: String, outPath: String, width: Int, height: Int, fps: Int, audio: [[String: Any]]) throws {
    let fileManager = FileManager.default
    let urls = try fileManager.contentsOfDirectory(atPath: framesDir)
      .filter { $0.lowercased().hasSuffix(".png") }
      .sorted()
      .map { URL(fileURLWithPath: framesDir).appendingPathComponent($0) }
    if urls.isEmpty { throw NSError(domain: "encode", code: -1, userInfo: [NSLocalizedDescriptionKey: "No PNG frames found"]) }

    let outputURL = URL(fileURLWithPath: outPath)
    if fileManager.fileExists(atPath: outputURL.path) {
      try? fileManager.removeItem(at: outputURL)
    }

    let writer = try AVAssetWriter(outputURL: outputURL, fileType: .mp4)
    let settings: [String: Any] = [
      AVVideoCodecKey: AVVideoCodecType.h264,
      AVVideoWidthKey: width,
      AVVideoHeightKey: height,
      AVVideoCompressionPropertiesKey: [
        AVVideoAverageBitRateKey: width * height * 5,
        AVVideoProfileLevelKey: AVVideoProfileLevelH264HighAutoLevel
      ]
    ]
    let input = AVAssetWriterInput(mediaType: .video, outputSettings: settings)
    input.expectsMediaDataInRealTime = false
    let attrs: [String: Any] = [
      kCVPixelBufferPixelFormatTypeKey as String: Int(kCVPixelFormatType_32BGRA),
      kCVPixelBufferWidthKey as String: width,
      kCVPixelBufferHeightKey as String: height
    ]
    let adaptor = AVAssetWriterInputPixelBufferAdaptor(assetWriterInput: input, sourcePixelBufferAttributes: attrs)
    writer.add(input)
    writer.startWriting()
    writer.startSession(atSourceTime: .zero)

    let frameDuration = CMTimeMake(value: 1, timescale: Int32(fps))
    var frameCount: Int64 = 0
    for (idx, url) in urls.enumerated() {
      autoreleasepool {
        guard input.isReadyForMoreMediaData else { usleep(1000); return }
        if let img = UIImage(contentsOfFile: url.path)?.cgImage,
           let pool = adaptor.pixelBufferPool {
          var px: CVPixelBuffer?
          CVPixelBufferPoolCreatePixelBuffer(nil, pool, &px)
          if let pb = px {
            CVPixelBufferLockBaseAddress(pb, [])
            let rgbColorSpace = CGColorSpaceCreateDeviceRGB()
            let ctx = CGContext(data: CVPixelBufferGetBaseAddress(pb),
                                width: width,
                                height: height,
                                bitsPerComponent: 8,
                                bytesPerRow: CVPixelBufferGetBytesPerRow(pb),
                                space: rgbColorSpace,
                                bitmapInfo: CGImageAlphaInfo.premultipliedFirst.rawValue | CGBitmapInfo.byteOrder32Little.rawValue)
            if let ctx = ctx {
              ctx.draw(img, in: CGRect(x: 0, y: 0, width: width, height: height))
            }
            CVPixelBufferUnlockBaseAddress(pb, [])
            let pts = CMTimeMultiply(frameDuration, multiplier: Int32(frameCount))
            adaptor.append(pb, withPresentationTime: pts)
            frameCount += 1
            sendProgress(Double(idx + 1) / Double(urls.count))
          }
        }
      }
    }
    input.markAsFinished()
    let group = DispatchGroup()
    group.enter()
    writer.finishWriting {
      group.leave()
    }
    group.wait()
    sendProgress(0.9)
    // Mux audio tracks if provided
    if !audio.isEmpty {
      let videoAsset = AVAsset(url: outputURL)
      let composition = AVMutableComposition()
      guard let vTrack = videoAsset.tracks(withMediaType: .video).first else {
        sendProgress(1.0); return
      }
      let compV = composition.addMutableTrack(withMediaType: .video, preferredTrackID: kCMPersistentTrackID_Invalid)!
      let videoDuration = videoAsset.duration
      try compV.insertTimeRange(CMTimeRange(start: .zero, duration: videoDuration), of: vTrack, at: .zero)

      var params: [AVMutableAudioMixInputParameters] = []
      for a in audio {
        guard let p = a["path"] as? String else { continue }
        let offsetSec = (a["offsetSec"] as? NSNumber)?.doubleValue ?? 0.0
        let gain = (a["gain"] as? NSNumber)?.doubleValue ?? 1.0
        let url = URL(fileURLWithPath: p)
        let aAsset = AVURLAsset(url: url)
        guard let aSrc = aAsset.tracks(withMediaType: .audio).first else { continue }
        let compA = composition.addMutableTrack(withMediaType: .audio, preferredTrackID: kCMPersistentTrackID_Invalid)!
        let offset = CMTime(seconds: abs(offsetSec), preferredTimescale: 600)
        let atTime: CMTime
        let srcStart: CMTime
        if offsetSec >= 0 {
          atTime = CMTime(seconds: offsetSec, preferredTimescale: 600)
          srcStart = .zero
        } else {
          atTime = .zero
          srcStart = offset
        }
        let remainInVideo = CMTimeSubtract(videoDuration, atTime)
        if remainInVideo <= .zero { continue }
        let remainInAudio = CMTimeSubtract(aAsset.duration, srcStart)
        let dur = (remainInAudio < remainInVideo) ? remainInAudio : remainInVideo
        if dur <= .zero { continue }
        try compA.insertTimeRange(CMTimeRange(start: srcStart, duration: dur), of: aSrc, at: atTime)
        let ip = AVMutableAudioMixInputParameters(track: compA)
        ip.setVolume(Float(max(0.0, min(gain, 2.0))), at: .zero)
        params.append(ip)
      }

      let mix = AVMutableAudioMix()
      mix.inputParameters = params

      let exporter = AVAssetExportSession(asset: composition, presetName: AVAssetExportPresetHighestQuality)!
      let finalURL = URL(fileURLWithPath: outPath + ".mux.tmp.mp4")
      try? FileManager.default.removeItem(at: finalURL)
      exporter.outputURL = finalURL
      exporter.outputFileType = .mp4
      exporter.audioMix = mix
      let group2 = DispatchGroup()
      group2.enter()
      exporter.exportAsynchronously {
        group2.leave()
      }
      group2.wait()
      if exporter.status == .completed {
        try? FileManager.default.removeItem(at: outputURL)
        try? FileManager.default.moveItem(at: finalURL, to: outputURL)
      }
    }
    sendProgress(1.0)
  }

  // FlutterStreamHandler
  func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
    self.eventSink = events
    return nil
  }
  func onCancel(withArguments arguments: Any?) -> FlutterError? {
    self.eventSink = nil
    return nil
  }
}
