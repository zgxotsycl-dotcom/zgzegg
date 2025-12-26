import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../l10n/app_localizations.dart';

import '../../app.dart';
import '../../data/models.dart';
import 'animation_editor_screen.dart';

class NewAnimationScreen extends StatefulWidget {
  const NewAnimationScreen({super.key});

  @override
  State<NewAnimationScreen> createState() => _NewAnimationScreenState();
}

class _NewAnimationScreenState extends State<NewAnimationScreen> {
  final _nameCtl = TextEditingController(text: 'My Animation');
  final _wCtl = TextEditingController(text: '1280');
  final _hCtl = TextEditingController(text: '720');
  int _fps = 24;
  bool _busy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).t('new.title')),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _nameCtl,
                decoration: InputDecoration(labelText: AppLocalizations.of(context).t('new.name')),
                autofocus: true,
              ),
              const SizedBox(height: 12),
              Row(children: [
                Expanded(
                  child: TextField(
                    controller: _wCtl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: AppLocalizations.of(context).t('new.width')),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _hCtl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: AppLocalizations.of(context).t('new.height')),
                  ),
                ),
              ]),
              const SizedBox(height: 12),
              Row(children: [
                Text(AppLocalizations.of(context).t('new.fps')),
                const SizedBox(width: 12),
                DropdownButton<int>(
                  value: _fps,
                  items: const [12, 15, 24, 30, 60]
                      .map((v) => DropdownMenuItem(value: v, child: Text('$v')))
                      .toList(),
                  onChanged: (v) => setState(() => _fps = v ?? _fps),
                ),
              ]),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerRight,
                child: FilledButton.icon(
                  onPressed: _busy ? null : _create,
                  icon: const Icon(Icons.check),
                  label: Text(_busy ? AppLocalizations.of(context).t('new.creating') : AppLocalizations.of(context).t('new.create')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _create() async {
    setState(() => _busy = true);
    final repo = context.read<AppState>().repo;
    try {
      final name = _nameCtl.text.trim().isEmpty ? 'My Animation' : _nameCtl.text.trim();
      final w = (int.tryParse(_wCtl.text.trim()) ?? 1280).clamp(1, 16384);
      final h = (int.tryParse(_hCtl.text.trim()) ?? 720).clamp(1, 16384);
      final setting = SequenceSetting(fps: _fps, width: w, height: h, totalFrames: 1, interpolate: false);
      final p = await repo.createProject(name);
      final s = await repo.createSequenceWithSetting(p, 'Scene 1', setting);
      await repo.markProjectOpened(p);
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => AnimationEditorScreen(project: p, sequence: s)),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${AppLocalizations.of(context).t('project.create_failed')} $e')));
      setState(() => _busy = false);
    }
  }
}
