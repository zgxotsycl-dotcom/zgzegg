import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bokuanimator/main.dart';

Future<void> _pumpUntilFound(
  WidgetTester tester,
  Finder finder, {
  Duration timeout = const Duration(seconds: 5),
}) async {
  final deadline = DateTime.now().add(timeout);
  while (DateTime.now().isBefore(deadline)) {
    await tester.pump(const Duration(milliseconds: 50));
    if (finder.evaluate().isNotEmpty) return;
  }
  debugDumpApp();
  fail('Timed out waiting for: $finder');
}

void main() {
  testWidgets('Can create project and add a layer', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Wait for async init (avoid pumpAndSettle due to potential indeterminate spinners).
    final buttonStyleButton = find.byWidgetPredicate((w) => w is ButtonStyleButton);
    final newProjectBtn = find.ancestor(
      of: find.byIcon(Icons.add_circle_outline),
      matching: buttonStyleButton,
    );
    final initError = find.textContaining('Init error:');
    final deadline = DateTime.now().add(const Duration(seconds: 8));
    while (DateTime.now().isBefore(deadline)) {
      await tester.pump(const Duration(milliseconds: 50));
      if (initError.evaluate().isNotEmpty) break;
      if (newProjectBtn.evaluate().isNotEmpty) break;
    }
    if (initError.evaluate().isNotEmpty) {
      final errText = tester.firstWidget<Text>(initError).data ?? 'Init error';
      fail(errText);
    }
    if (newProjectBtn.evaluate().isEmpty) {
      debugDumpApp();
      fail('Home screen did not finish initializing (new project button not found).');
    }

    // Open new project screen.
    await tester.tap(newProjectBtn);
    await tester.pump();

    await _pumpUntilFound(tester, find.byIcon(Icons.check));

    // Create project (defaults).
    await tester.tap(find.byIcon(Icons.check));
    await tester.pump();

    // Let the route transition finish before interacting with the AppBar.
    await tester.pump(const Duration(milliseconds: 600));

    // Open layers panel.
    final layersIcon = find.byIcon(Icons.layers_outlined);
    await _pumpUntilFound(tester, layersIcon, timeout: const Duration(seconds: 8));
    final layersBtn = find.ancestor(of: layersIcon, matching: find.byType(IconButton));
    await tester.tap(layersBtn);
    await tester.pump();

    final layers0 = find.text('Layers (0)');
    await _pumpUntilFound(tester, layers0);

    // Add a stickman layer.
    final addLayerBtn = find.byWidgetPredicate((w) => w is IconButton && w.tooltip == 'Add layer');
    await tester.tap(addLayerBtn);
    await tester.pump();

    await _pumpUntilFound(tester, find.text('Stickman'));
    await tester.tap(find.text('Stickman'));
    await tester.pump();

    final layers1 = find.text('Layers (1)');
    await _pumpUntilFound(tester, layers1, timeout: const Duration(seconds: 8));
  });
}
