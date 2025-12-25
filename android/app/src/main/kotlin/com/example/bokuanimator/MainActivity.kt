package com.example.bokuanimator

import android.graphics.BitmapFactory
import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaFormat
import android.media.MediaMuxer
import android.os.Build
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import java.io.File
import java.nio.ByteBuffer
import java.util.concurrent.atomic.AtomicReference

class MainActivity : FlutterActivity() {
    private val METHOD = "native_video_export"
    private val EVENTS = "native_video_export/progress"
    private var eventSinkRef: AtomicReference<EventChannel.EventSink?> = AtomicReference(null)

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        EventChannel(flutterEngine.dartExecutor.binaryMessenger, EVENTS).setStreamHandler(object : EventChannel.StreamHandler {
            override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                eventSinkRef.set(events)
            }
            override fun onCancel(arguments: Any?) {
                eventSinkRef.set(null)
            }
        })

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, METHOD).setMethodCallHandler { call: MethodCall, result: MethodChannel.Result ->
            if (call.method == "encodeMp4") {
                val framesDir = File(call.argument<String>("framesDir")!!)
                val outPath = call.argument<String>("outPath")!!
                val width = call.argument<Int>("width")!!
                val height = call.argument<Int>("height")!!
                val fps = call.argument<Int>("fps")!!
                @Suppress("UNCHECKED_CAST")
                val audio = (call.argument<List<Map<String, Any>>>("audio") ?: emptyList()) as List<Map<String, Any>>
                Thread {
                    try {
                        encodeSequenceWithOptionalAudio(framesDir, outPath, width, height, fps, audio)
                        runOnUiThread { result.success(true) }
                    } catch (e: Exception) {
                        runOnUiThread { result.error("ENCODE_FAIL", e.message, null) }
                    }
                }.start()
            } else {
                result.notImplemented()
            }
        }
    }

    private fun sendProgress(p: Double) {
        eventSinkRef.get()?.success(p)
    }

    private fun chooseColorFormat(codec: MediaCodec): Int {
        val caps = codec.codecInfo.getCapabilitiesForType("video/avc")
        val preferred = listOf(
            MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420SemiPlanar,
            MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar
        )
        for (c in preferred) {
            if (caps.colorFormats.contains(c)) return c
        }
        return caps.colorFormats.firstOrNull()
            ?: MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar
    }

    private fun encodeSequenceWithOptionalAudio(framesDir: File, outPath: String, width: Int, height: Int, fps: Int, audio: List<Map<String, Any>>) {
        val tempVideo = File(outPath + ".video.tmp.mp4")
        if (tempVideo.exists()) tempVideo.delete()
        encodeVideoOnly(framesDir, tempVideo.absolutePath, width, height, fps)

        val nonMuted = audio.filter { (it["mute"] as? Boolean) != true }
        // Fast path: no audio -> rename temp video to final
        if (nonMuted.isEmpty()) {
            tempVideo.copyTo(File(outPath), overwrite = true)
            tempVideo.delete()
            sendProgress(1.0)
            return
        }

        // Prepare video extractor and track format
        val videoExtractor = android.media.MediaExtractor()
        videoExtractor.setDataSource(tempVideo.absolutePath)
        var videoSrcIndex = -1
        var videoFormat: MediaFormat? = null
        for (i in 0 until videoExtractor.trackCount) {
            val fmt = videoExtractor.getTrackFormat(i)
            val mime = fmt.getString(MediaFormat.KEY_MIME) ?: ""
            if (mime.startsWith("video/")) { videoSrcIndex = i; videoFormat = fmt; break }
        }
        if (videoSrcIndex < 0 || videoFormat == null) throw RuntimeException("No video track in temp mp4")
        videoExtractor.selectTrack(videoSrcIndex)

        // Build audio decoders for sources (same sample rate/channels only)
        data class Src(val path:String, val offsetSec:Double, val gain:Double)
        val srcs = nonMuted.mapNotNull {
            val p = it["path"] as? String ?: return@mapNotNull null
            val off = (it["offsetSec"] as? Number)?.toDouble() ?: 0.0
            val g = (it["gain"] as? Number)?.toDouble() ?: 1.0
            Src(p, off, g)
        }
        if (srcs.isEmpty()) {
            // No valid audio, just move video
            tempVideo.copyTo(File(outPath), overwrite = true)
            tempVideo.delete(); sendProgress(1.0); return
        }

        // Helper PCM decoder
        class PcmDecoder(val path:String, val gain:Double, val offsetSec:Double, val targetSr:Int, val targetCh:Int) {
            val extractor = android.media.MediaExtractor()
            var decoder: MediaCodec? = null
            var outDone = false
            var inDone = false
            var fwdSilenceSamples = 0
            val queue = ByteArray(1048576) // 1MB ring buffer
            var qStart = 0; var qSize = 0
            var srcSr = targetSr
            var srcCh = targetCh
            var srcBytesPerFrame = 2 * srcCh
            val dstBytesPerFrame = 2 * targetCh
            private var srcPos = 0.0 // fractional source frame position consumed

            fun start(): Boolean {
                extractor.setDataSource(path)
                var idx = -1
                var fmt: MediaFormat? = null
                for (i in 0 until extractor.trackCount) {
                    val f = extractor.getTrackFormat(i)
                    val mime = f.getString(MediaFormat.KEY_MIME) ?: ""
                    if (mime.startsWith("audio/")) { idx = i; fmt = f; break }
                }
                if (idx < 0 || fmt == null) return false
                srcSr = fmt.getInteger(MediaFormat.KEY_SAMPLE_RATE)
                srcCh = fmt.getInteger(MediaFormat.KEY_CHANNEL_COUNT)
                srcBytesPerFrame = 2 * srcCh
                extractor.selectTrack(idx)
                val mime = fmt.getString(MediaFormat.KEY_MIME)!!
                decoder = MediaCodec.createDecoderByType(mime)
                decoder!!.configure(fmt, null, null, 0)
                decoder!!.start()
                // Handle offset: negative => skip source; positive => forward silence
                if (offsetSec < 0) {
                    val toSkip = kotlin.math.abs((offsetSec * srcSr).toInt())
                    skipSamples(toSkip)
                } else if (offsetSec > 0) {
                    fwdSilenceSamples = (offsetSec * targetSr).toInt()
                }
                return true
            }

            private fun ensure(nBytes:Int) {
                val dec = decoder ?: return
                val info = MediaCodec.BufferInfo()
                while (qSize < nBytes && !outDone) {
                    if (!inDone) {
                        val inIdx = dec.dequeueInputBuffer(10000)
                        if (inIdx >= 0) {
                            val ib = if (Build.VERSION.SDK_INT >= 21) dec.getInputBuffer(inIdx) else dec.inputBuffers[inIdx]
                            val sz = extractor.readSampleData(ib!!, 0)
                            if (sz < 0) { dec.queueInputBuffer(inIdx, 0, 0, 0, MediaCodec.BUFFER_FLAG_END_OF_STREAM); inDone = true } else {
                                dec.queueInputBuffer(inIdx, 0, sz, extractor.sampleTime, 0); extractor.advance()
                            }
                        }
                    }
                    val outIdx = dec.dequeueOutputBuffer(info, 10000)
                    when {
                        outIdx == MediaCodec.INFO_TRY_AGAIN_LATER -> { if (inDone) { /* wait */ } }
                        outIdx == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> {
                            val of = dec.outputFormat
                            if (of.containsKey(MediaFormat.KEY_SAMPLE_RATE)) srcSr = of.getInteger(MediaFormat.KEY_SAMPLE_RATE)
                            if (of.containsKey(MediaFormat.KEY_CHANNEL_COUNT)) srcCh = of.getInteger(MediaFormat.KEY_CHANNEL_COUNT)
                            srcBytesPerFrame = 2 * srcCh
                        }
                        outIdx >= 0 -> {
                            val ob = if (Build.VERSION.SDK_INT >= 21) dec.getOutputBuffer(outIdx) else dec.outputBuffers[outIdx]
                            if (ob != null && info.size > 0) {
                                ob.limit(info.offset + info.size); ob.position(info.offset)
                                val remainEnd = queue.size - (qStart + qSize) % queue.size
                                val toCopy = info.size
                                ob.get(queue, (qStart + qSize) % queue.size, minOf(toCopy, remainEnd))
                                if (toCopy > remainEnd) {
                                    ob.get(queue, 0, toCopy - remainEnd)
                                }
                                qSize += toCopy
                            }
                            dec.releaseOutputBuffer(outIdx, false)
                            if ((info.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) { outDone = true }
                        }
                    }
                }
            }

            fun skipSamples(samples:Int) {
                var bytesToSkip = samples * srcBytesPerFrame
                while (bytesToSkip > 0 && !outDone) {
                    ensure(1)
                    val drop = minOf(bytesToSkip, qSize)
                    qStart = (qStart + drop) % queue.size
                    qSize -= drop
                    bytesToSkip -= drop
                }
            }

            fun readIntoFloat(out: FloatArray, frames:Int) : Int {
                var produced = 0
                // Positive offset: initial silence at target rate
                if (fwdSilenceSamples > 0) {
                    val fs = minOf(frames, fwdSilenceSamples)
                    fwdSilenceSamples -= fs
                    produced += fs
                    if (produced >= frames) return produced
                }
                val ratio = srcSr.toDouble() / targetSr.toDouble()
                ensure(8192)
                var outIdx = produced * targetCh
                fun maxSrcFrames():Int = qSize / srcBytesPerFrame
                while (produced < frames) {
                    val i0 = kotlin.math.floor(srcPos).toInt()
                    val i1 = i0 + 1
                    if (i1 + 1 >= maxSrcFrames() && !outDone) {
                        ensure(8192)
                        if (maxSrcFrames() <= i1) break
                    }
                    if (maxSrcFrames() <= i1 && outDone) break
                    val frac = (srcPos - kotlin.math.floor(srcPos)).toFloat()
                    fun sampleAt(frameIndex:Int, ch:Int):Int {
                        val byteIndex = (qStart + frameIndex * srcBytesPerFrame + ch*2) % queue.size
                        val b0 = queue[byteIndex].toInt() and 0xff
                        val b1 = queue[(byteIndex+1)%queue.size].toInt() and 0xff
                        val s = b0 or (b1 shl 8)
                        return if (s >= 32768) s - 65536 else s
                    }
                    val l0 = if (srcCh >= 1) sampleAt(i0, 0) else 0
                    val r0 = if (srcCh >= 2) sampleAt(i0, 1) else l0
                    val l1 = if (srcCh >= 1) sampleAt(i1, 0) else 0
                    val r1 = if (srcCh >= 2) sampleAt(i1, 1) else l1
                    val l = (l0 * (1f - frac) + l1 * frac) / 32768f * gain.toFloat()
                    val r = (r0 * (1f - frac) + r1 * frac) / 32768f * gain.toFloat()
                    if (targetCh == 2) {
                        out[outIdx] += l; out[outIdx+1] += r; outIdx += 2
                    } else {
                        out[outIdx] += (l + r) * 0.5f; outIdx += 1
                    }
                    produced += 1
                    srcPos += ratio
                    val drop = kotlin.math.floor(srcPos).toInt()
                    if (drop > 0) {
                        val bytes = drop * srcBytesPerFrame
                        qStart = (qStart + bytes) % queue.size
                        qSize -= bytes
                        srcPos -= drop
                    }
                }
                return produced
            }

            fun release() { try { decoder?.stop(); decoder?.release(); extractor.release() } catch (_:Exception) {} }
        }

        // Determine target sampleRate/channels from first usable source
        val probe = android.media.MediaExtractor()
        var targetSr = 44100
        var targetCh = 2
        run {
            for (s in srcs) {
                try {
                    probe.setDataSource(s.path)
                    for (i in 0 until probe.trackCount) {
                        val fmt = probe.getTrackFormat(i)
                        val mime = fmt.getString(MediaFormat.KEY_MIME) ?: ""
                        if (mime.startsWith("audio/")) {
                            targetSr = fmt.getInteger(MediaFormat.KEY_SAMPLE_RATE)
                            targetCh = fmt.getInteger(MediaFormat.KEY_CHANNEL_COUNT)
                            break
                        }
                    }
                    break
                } catch (_:Exception) {}
            }
        }
        try { probe.release() } catch (_:Exception) {}

        val decoders = mutableListOf<PcmDecoder>()
        for (s in srcs) {
            val d = PcmDecoder(s.path, s.gain, s.offsetSec, targetSr, targetCh)
            if (d.start()) decoders.add(d) else d.release()
        }
        if (decoders.isEmpty()) {
            tempVideo.copyTo(File(outPath), overwrite = true)
            tempVideo.delete(); videoExtractor.release(); sendProgress(1.0); return
        }

        // Prepare AAC encoder
        val aFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", targetSr, targetCh)
        aFormat.setInteger(MediaFormat.KEY_BIT_RATE, 192_000)
        aFormat.setInteger(MediaFormat.KEY_AAC_PROFILE, MediaCodecInfo.CodecProfileLevel.AACObjectLC)
        val aEnc = MediaCodec.createEncoderByType("audio/mp4a-latm")
        aEnc.configure(aFormat, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
        aEnc.start()

        val muxer = MediaMuxer(outPath, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4)
        val videoTrackIndex = muxer.addTrack(videoFormat)
        var audioTrackIndex = -1
        var muxerStarted = false

        // Obtain encoder output format then start muxer
        run {
            val info = MediaCodec.BufferInfo()
            var gotFormat = false
            val startWaitLimit = System.currentTimeMillis() + 2000
            while (!gotFormat && System.currentTimeMillis() < startWaitLimit) {
                val outIdx = aEnc.dequeueOutputBuffer(info, 10000)
                if (outIdx == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                    audioTrackIndex = muxer.addTrack(aEnc.outputFormat)
                    muxer.start()
                    muxerStarted = true
                    gotFormat = true
                } else if (outIdx >= 0) {
                    aEnc.releaseOutputBuffer(outIdx, false)
                }
            }
            if (!gotFormat) {
                // Fallback: assume output format now available
                audioTrackIndex = muxer.addTrack(aEnc.outputFormat)
                muxer.start(); muxerStarted = true
            }
        }

        // Copy video samples first
        run {
            val buffer = ByteBuffer.allocate(1024*1024)
            val info = MediaCodec.BufferInfo()
            while (true) {
                info.offset = 0
                info.size = videoExtractor.readSampleData(buffer, 0)
                if (info.size < 0) break
                info.presentationTimeUs = videoExtractor.sampleTime
                info.flags = videoExtractor.sampleFlags
                muxer.writeSampleData(videoTrackIndex, buffer, info)
                videoExtractor.advance()
            }
            videoExtractor.release()
        }

        // Mix and encode audio
        val bytesPerFrame = 2 * targetCh
        val chunkFrames = 1024
        val mix = FloatArray(chunkFrames * targetCh)
        val tmp = FloatArray(chunkFrames * targetCh)
        var sampleIndex: Long = 0
        var activeDecoders = decoders.size
        val encInfo = MediaCodec.BufferInfo()
        fun drainEnc(finalDrain:Boolean=false) {
            while (true) {
                val outIdx = aEnc.dequeueOutputBuffer(encInfo, 10000)
                when {
                    outIdx == MediaCodec.INFO_TRY_AGAIN_LATER -> return
                    outIdx == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> { /* already handled */ }
                    outIdx >= 0 -> {
                        val ob = if (Build.VERSION.SDK_INT >= 21) aEnc.getOutputBuffer(outIdx) else aEnc.outputBuffers[outIdx]
                        if (ob != null && encInfo.size > 0) {
                            ob.position(encInfo.offset); ob.limit(encInfo.offset + encInfo.size)
                            muxer.writeSampleData(audioTrackIndex, ob, encInfo)
                        }
                        aEnc.releaseOutputBuffer(outIdx, false)
                        if ((encInfo.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) return
                    }
                }
            }
        }

        while (activeDecoders > 0) {
            java.util.Arrays.fill(mix, 0f)
            var filledFrames = 0
            // For each decoder, read up to chunkFrames; accumulate
            for (d in decoders) {
                java.util.Arrays.fill(tmp, 0f)
                val got = d.readIntoFloat(tmp, chunkFrames)
                if (got == 0) { /* exhausted or silence this round */ } else { if (got > filledFrames) filledFrames = got }
                // accumulate tmp into mix
                val samples = got * targetCh
                var i = 0
                while (i < samples) { mix[i] += tmp[i]; i++ }
            }
            if (filledFrames == 0) {
                // all decoders done
                activeDecoders = 0
                break
            }
            // clamp and feed encoder
            val framesToWrite = filledFrames
            val inIdx = aEnc.dequeueInputBuffer(10000)
            if (inIdx >= 0) {
                val ib = if (Build.VERSION.SDK_INT >= 21) aEnc.getInputBuffer(inIdx) else aEnc.inputBuffers[inIdx]
                ib!!.clear()
                // convert float to PCM16
                var i = 0
                var writtenBytes = 0
                while (i < framesToWrite * targetCh) {
                    var v = mix[i]
                    if (v > 1f) v = 1f; if (v < -1f) v = -1f
                    val s = (v * 32767f).toInt()
                    ib.put((s and 0xff).toByte())
                    ib.put(((s ushr 8) and 0xff).toByte())
                    writtenBytes += 2
                    i++
                }
                val pts = (sampleIndex * 1_000_000L) / targetSr
                aEnc.queueInputBuffer(inIdx, 0, writtenBytes, pts, 0)
                sampleIndex += framesToWrite
            }
            drainEnc(false)
        }
        // send EOS
        val inIdx = aEnc.dequeueInputBuffer(10000)
        if (inIdx >= 0) {
            aEnc.queueInputBuffer(inIdx, 0, 0, (sampleIndex * 1_000_000L) / targetSr, MediaCodec.BUFFER_FLAG_END_OF_STREAM)
        }
        drainEnc(true)
        aEnc.stop(); aEnc.release()
        for (d in decoders) { d.release() }
        muxer.stop(); muxer.release()
        tempVideo.delete()
        sendProgress(1.0)
    }

    private fun encodeVideoOnly(framesDir: File, outPath: String, width: Int, height: Int, fps: Int) {
        val files = framesDir.listFiles { f -> f.isFile && f.name.endsWith(".png") }?.sortedBy { it.name } ?: emptyList()
        if (files.isEmpty()) throw IllegalArgumentException("No PNG frames found in ${framesDir.path}")

        // Configure encoder
        val format = MediaFormat.createVideoFormat("video/avc", width, height)
        val bitRate = (width * height * 5).coerceAtLeast(500_000)
        format.setInteger(MediaFormat.KEY_BIT_RATE, bitRate)
        format.setInteger(MediaFormat.KEY_FRAME_RATE, fps)
        format.setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, 1)

        val codec = MediaCodec.createEncoderByType("video/avc")
        val color = chooseColorFormat(codec)
        format.setInteger(MediaFormat.KEY_COLOR_FORMAT, color)
        codec.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
        codec.start()

        val muxer = MediaMuxer(outPath, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4)
        var trackIndex = -1
        var muxerStarted = false
        val info = MediaCodec.BufferInfo()

        fun drainEncoder() {
            while (true) {
                val outIndex = codec.dequeueOutputBuffer(info, 10000)
                when {
                    outIndex == MediaCodec.INFO_TRY_AGAIN_LATER -> {
                        return
                    }
                    outIndex == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> {
                        if (muxerStarted) throw RuntimeException("format changed twice")
                        val newFormat = codec.outputFormat
                        trackIndex = muxer.addTrack(newFormat)
                        muxer.start()
                        muxerStarted = true
                    }
                    outIndex >= 0 -> {
                        val encodedData: ByteBuffer? = if (Build.VERSION.SDK_INT >= 21) codec.getOutputBuffer(outIndex) else codec.outputBuffers[outIndex]
                        if (encodedData == null) throw RuntimeException("encoderOutputBuffer $outIndex was null")

                        if (info.size != 0) {
                            if (!muxerStarted) throw RuntimeException("muxer hasn't started")
                            encodedData.position(info.offset)
                            encodedData.limit(info.offset + info.size)
                            muxer.writeSampleData(trackIndex, encodedData, info)
                        }
                        codec.releaseOutputBuffer(outIndex, false)
                        if ((info.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) return
                    }
                }
            }
        }

        var frameIndex = 0
        val total = files.size
        val frameDurationUs = (1_000_000L / fps)
        var lastProgressSent = -1
        // Preallocate reusable buffers to reduce GC pressure on long sequences
        val ySize = width * height
        val uvSize = ySize / 4
        val argb = IntArray(ySize)
        val yuvI420 = ByteArray(ySize + uvSize * 2)
        val yuvNV12 = ByteArray(ySize + uvSize * 2)

        for (f in files) {
            val bmp = BitmapFactory.decodeFile(f.absolutePath)
            // Frames were rendered at target resolution; avoid re-decode/scale
            val src = bmp
            src.getPixels(argb, 0, width, 0, 0, width, height)
            val yuv = if (color == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar) {
                toI420(argb, width, height, yuvI420)
                yuvI420
            } else {
                toNV12(argb, width, height, yuvNV12)
                yuvNV12
            }

            // Feed input
            val inIndex = codec.dequeueInputBuffer(10000)
            if (inIndex >= 0) {
                val inputBuffer: ByteBuffer? = if (Build.VERSION.SDK_INT >= 21) codec.getInputBuffer(inIndex) else codec.inputBuffers[inIndex]
                inputBuffer?.clear()
                inputBuffer?.put(yuv)
                val pts = frameIndex * frameDurationUs
                codec.queueInputBuffer(inIndex, 0, yuv.size, pts, 0)
            }

            // Drain output
            drainEncoder()

            frameIndex++
            val pInt = (frameIndex * 100 / total)
            if (pInt != lastProgressSent) {
                lastProgressSent = pInt
                sendProgress(pInt / 100.0)
            }
            bmp.recycle()
        }

        // Queue EOS
        var eosQueued = false
        while (!eosQueued) {
            val inIndex = codec.dequeueInputBuffer(10000)
            if (inIndex >= 0) {
                codec.queueInputBuffer(inIndex, 0, 0, frameIndex * frameDurationUs, MediaCodec.BUFFER_FLAG_END_OF_STREAM)
                eosQueued = true
            }
        }
        // Drain remaining
        while (true) {
            val outIndex = codec.dequeueOutputBuffer(info, 10000)
            if (outIndex == MediaCodec.INFO_TRY_AGAIN_LATER) break
            if (outIndex == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                if (!muxerStarted) {
                    val newFormat = codec.outputFormat
                    trackIndex = muxer.addTrack(newFormat)
                    muxer.start()
                    muxerStarted = true
                }
            } else if (outIndex >= 0) {
                val encodedData: ByteBuffer? = if (Build.VERSION.SDK_INT >= 21) codec.getOutputBuffer(outIndex) else codec.outputBuffers[outIndex]
                if (encodedData != null) {
                    if (info.size != 0) {
                        if (!muxerStarted) throw RuntimeException("muxer hasn't started")
                        encodedData.position(info.offset)
                        encodedData.limit(info.offset + info.size)
                        muxer.writeSampleData(trackIndex, encodedData, info)
                    }
                }
                val end = (info.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0
                codec.releaseOutputBuffer(outIndex, false)
                if (end) break
            }
        }
        codec.stop()
        codec.release()
        muxer.stop()
        muxer.release()
        sendProgress(1.0)
    }

    private fun clampToByte(v: Int): Byte {
        val x = if (v < 0) 0 else if (v > 255) 255 else v
        return x.toByte()
    }

    // Convert ARGB int[] to I420 in provided buffer (Y + U + V)
    private fun toI420(argb: IntArray, w: Int, h: Int, dest: ByteArray) {
        val ySize = w * h
        val uvSize = ySize / 4
        var yi = 0
        for (j in 0 until h) {
            for (i in 0 until w) {
                val c = argb[j * w + i]
                val r = (c ushr 16) and 0xff
                val g = (c ushr 8) and 0xff
                val b = c and 0xff
                val yy = ((66 * r + 129 * g + 25 * b + 128) shr 8) + 16
                dest[yi++] = clampToByte(yy)
            }
        }
        for (j in 0 until h step 2) {
            for (i in 0 until w step 2) {
                val c = argb[j * w + i]
                val r = (c ushr 16) and 0xff
                val g = (c ushr 8) and 0xff
                val b = c and 0xff
                val uu = ((-38 * r - 74 * g + 112 * b + 128) shr 8) + 128
                val vv = ((112 * r - 94 * g - 18 * b + 128) shr 8) + 128
                val idx = (j / 2) * (w / 2) + (i / 2)
                dest[ySize + idx] = clampToByte(uu)
                dest[ySize + uvSize + idx] = clampToByte(vv)
            }
        }
    }

    // Convert ARGB int[] to NV12 in provided buffer (Y + interleaved UV)
    private fun toNV12(argb: IntArray, w: Int, h: Int, dest: ByteArray) {
        val ySize = w * h
        var yi = 0
        for (j in 0 until h) {
            for (i in 0 until w) {
                val c = argb[j * w + i]
                val r = (c ushr 16) and 0xff
                val g = (c ushr 8) and 0xff
                val b = c and 0xff
                val yy = ((66 * r + 129 * g + 25 * b + 128) shr 8) + 16
                dest[yi++] = clampToByte(yy)
            }
        }
        for (j in 0 until h step 2) {
            for (i in 0 until w step 2) {
                val c = argb[j * w + i]
                val r = (c ushr 16) and 0xff
                val g = (c ushr 8) and 0xff
                val b = c and 0xff
                val uu = ((-38 * r - 74 * g + 112 * b + 128) shr 8) + 128
                val vv = ((112 * r - 94 * g - 18 * b + 128) shr 8) + 128
                val uvIndex = ySize + (j / 2) * w + i
                dest[uvIndex] = clampToByte(uu)
                dest[uvIndex + 1] = clampToByte(vv)
            }
        }
    }
}

