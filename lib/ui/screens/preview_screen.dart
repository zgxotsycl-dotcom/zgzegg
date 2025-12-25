import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/scheduler.dart';
import 'dart:ui' as ui;
import 'package:provider/provider.dart';

import '../../app.dart';
import '../../data/models.dart';
import '../../engine/renderer.dart';
import '../../l10n/app_localizations.dart';

class PreviewScreen extends StatefulWidget {
  final Sequence sequence;
  final Map<String, Model> models;
  final Map<String, ui.Image> images;
  final int totalFrames;

  const PreviewScreen({
    super.key,
    required this.sequence,
    required this.models,
    required this.images,
    required this.totalFrames,
  });

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  double _t = 1.0; // 1-based timeline
  bool _playing = true;
  ui.Image? _frame;
  int _lastRenderedFrame = -1;
  Duration _lastTick = Duration.zero;
  double _q = 0.7; // downscale factor
  bool _controlsVisible = true;
  Timer? _hideTimer;

  @override
  void initState() {
    super.initState();
    _q = widget.sequence.setting.previewDownscale.clamp(0.5, 1.0);
    _ticker = createTicker(_onTick)..start();
  }

  void _onTick(Duration elapsed) {
    if (!_playing) return;
    if (_lastTick == Duration.zero) { _lastTick = elapsed; return; }
    final dt = elapsed - _lastTick; _lastTick = elapsed;
    final dsec = dt.inMicroseconds / 1e6;
    final fps = widget.sequence.setting.fps;
    final df = dsec * fps * widget.sequence.setting.playbackRate;
    _t += df;
    if (_t > widget.totalFrames) _t = 1;
    final cur = _t.floor();
    if (cur != _lastRenderedFrame) {
      _render();
      _lastRenderedFrame = cur;
    }
  }

  void _render() {
    final w0 = widget.sequence.setting.width.toDouble();
    final h0 = widget.sequence.setting.height.toDouble();
    // Fast preview: downscale internal render size and disable onion skin
    final double q = _q; // scale factor
    double w = (w0 * q).clamp(320, w0);
    double h = (h0 * q).clamp(180, h0);
    w = (w ~/ 2 * 2).toDouble();
    h = (h ~/ 2 * 2).toDouble();

    final seqNoOnion = widget.sequence.copyWith(
      onion: const OnionSkinSetting(prevFrames: 0, nextFrames: 0),
    );
    final bgPath = widget.sequence.setting.backgroundImage;
    final luma = bgPath == null ? null : context.read<AppState>().repo.imageCenterLuma[bgPath];
    final img = Renderer.paintFrame(
      seq: seqNoOnion,
      models: widget.models,
      images: widget.images,
      tFrame: _t,
      size: ui.Size(w, h),
      interpolate: widget.sequence.setting.interpolate,
      showHelperJoints: false,
      drawGrid: false,
      bgCenterLuma: luma,
    );
    setState(() { _frame = img; });
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final w = widget.sequence.setting.width.toDouble();
    final h = widget.sequence.setting.height.toDouble();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AnimatedSlide(
          offset: _controlsVisible ? Offset.zero : const Offset(0, -1),
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOutCubic,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 180), 
            curve: Curves.easeOut,
            opacity: _controlsVisible ? 1.0 : 0.0,
            child: AppBar(
              title: Text(AppLocalizations.of(context).t('preview.title')),
              actions: [
                IconButton(
                  icon: Icon(_playing ? Icons.pause : Icons.play_arrow),
                  tooltip: _playing ? AppLocalizations.of(context).t('preview.pause') : AppLocalizations.of(context).t('preview.play'),
                  onPressed: () => setState(() => _playing = !_playing),
                ),
                PopupMenuButton<double>(
                  tooltip: AppLocalizations.of(context).t('preview.quality'),
                  onSelected: (v){ setState(() { _q = v.clamp(0.5, 1.0); _render(); }); },
                  itemBuilder: (ctx) => [
                    PopupMenuItem(value: 1.0, child: Text(AppLocalizations.of(ctx).t('preview.quality.original'))),
                    PopupMenuItem(value: 0.7, child: Text(AppLocalizations.of(ctx).t('preview.quality.medium'))),
                    PopupMenuItem(value: 0.5, child: Text(AppLocalizations.of(ctx).t('preview.quality.fast'))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() { _controlsVisible = !_controlsVisible; });
          _hideTimer?.cancel();
          if (_controlsVisible) {
            _hideTimer = Timer(const Duration(seconds: 3), () { if (mounted) setState(() => _controlsVisible = false); });
          }
        },
        child: Center(
          child: AspectRatio(
            aspectRatio: w / h,
            child: DecoratedBox(
              decoration: const BoxDecoration(color: Color(0xFF222222)),
              child: _frame == null
                  ? const Center(child: CircularProgressIndicator())
                  : RawImage(image: _frame),
            ),
          ),
        ),
      ),
      bottomNavigationBar: AnimatedSlide(
        offset: _controlsVisible ? Offset.zero : const Offset(0, 1),
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOutCubic,
        child: AnimatedOpacity(
          opacity: _controlsVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          child: IgnorePointer(
            ignoring: !_controlsVisible,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text('${_t.round()} / ${widget.totalFrames}'),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Slider(
                      min: 1,
                      max: widget.totalFrames.toDouble().clamp(1, 100000),
                      value: _t.clamp(1, widget.totalFrames.toDouble()),
                      onChanged: (v) { setState(() { _t = v; _render(); }); },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text('${widget.sequence.setting.fps}fps x${widget.sequence.setting.playbackRate.toStringAsFixed(2)}'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

