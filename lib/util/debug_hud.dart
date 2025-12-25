import 'dart:async';
import 'package:flutter/material.dart';

class DebugLog {
  static final ValueNotifier<String> _notifier = ValueNotifier('');
  static Timer? _timer;
  static void show(String msg, {Duration? ttl}) {
    _notifier.value = msg;
    _timer?.cancel();
    _timer = Timer(ttl ?? const Duration(seconds: 2), () {
      _notifier.value = '';
    });
  }
}

class DebugHUD extends StatelessWidget {
  const DebugHUD({super.key});
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bg = isDark ? Colors.white.withOpacity(0.2) : Colors.black.withOpacity(0.6);
    final fg = isDark ? Colors.black : Colors.white;
    return Positioned(
      left: 8,
      bottom: 8,
      child: ValueListenableBuilder<String>(
        valueListenable: DebugLog._notifier,
        builder: (_, v, __) {
          if (v.isEmpty) return const SizedBox.shrink();
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(6)),
            child: Text(
              v,
              style: TextStyle(fontSize: 12, color: fg),
            ),
          );
        },
      ),
    );
  }
}
