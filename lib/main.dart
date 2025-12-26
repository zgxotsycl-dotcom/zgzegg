import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import 'app.dart';
import 'l10n/app_localizations.dart';
import 'data/models.dart';
import 'data/repository.dart';
import 'ui/screens/animation_editor_screen.dart';
import 'ui/screens/model_editor_screen.dart';
import 'ui/screens/new_animation_screen.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError = (details) {
      FlutterError.presentError(details);
      // In production, report to crash service.
    };
    runApp(const MyApp());
  }, (error, stack) {
    // In production, report to crash service.
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppRoot(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const _sectionTitleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  String _searchQuery = '';

  void _dismissTransientUI() {
    try {
      Navigator.of(context, rootNavigator: true)
          .popUntil((route) => route is PageRoute);
    } catch (_) {}
    try {
      ScaffoldMessenger.of(context).clearSnackBars();
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    if (!appState.initialized) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    if (appState.error != null) {
      return Scaffold(
        body: Center(child: Text('Init error: ${appState.error}')),
      );
    }

    final repo = appState.repo;
    final favorites = _sortedAndFiltered(repo.projects.where((p) => p.favorite));
    final others = _sortedAndFiltered(repo.projects.where((p) => !p.favorite));

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).t('app.title')),
        actions: [
          IconButton(
            tooltip: appState.themeMode == ThemeMode.dark
                ? 'Switch to light theme'
                : 'Switch to dark theme',
            icon: Icon(
              appState.themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () => context.read<AppState>().toggleTheme(),
          ),
          IconButton(
            tooltip: appState.perfOverlay
                ? 'Hide performance overlay'
                : 'Show performance overlay',
            icon: Icon(
              appState.perfOverlay ? Icons.speed : Icons.speed_outlined,
            ),
            onPressed: () => context.read<AppState>().togglePerfOverlay(),
          ),
          PopupMenuButton<String>(
            tooltip: 'Language',
            icon: const Icon(Icons.language),
            onSelected: (code){
              if (code == 'system') {
                context.read<AppState>().setLocale(null);
              } else {
                context.read<AppState>().setLocale(Locale(code));
              }
            },
            itemBuilder: (ctx) => [
              PopupMenuItem(value: 'system', child: Text(AppLocalizations.of(ctx).t('lang.system'))),
              const PopupMenuItem(value: 'en', child: Text('English')),
              const PopupMenuItem(value: 'es', child: Text('Español')),
              const PopupMenuItem(value: 'de', child: Text('Deutsch')),
              const PopupMenuItem(value: 'fr', child: Text('Français')),
              const PopupMenuItem(value: 'ja', child: Text('日本語')),
              const PopupMenuItem(value: 'zh', child: Text('中文')),
              const PopupMenuItem(value: 'ru', child: Text('Русский')),
              const PopupMenuItem(value: 'ko', child: Text('한국어')),
            ],
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth >= 900;
          final pad = constraints.maxWidth < 600 ? 16.0 : 24.0;
          return SingleChildScrollView(
            padding: EdgeInsets.all(pad),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1080),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildQuickStart(repo),
                    const SizedBox(height: 32),
                    _buildSearchField(),
                    const SizedBox(height: 24),
                    if (favorites.isNotEmpty) ...[
                      Text(AppLocalizations.of(context).t('home.favorites'), style: _sectionTitleStyle),
                      const SizedBox(height: 12),
                      _buildProjectList(favorites, repo, isWide),
                      const SizedBox(height: 32),
                    ],
                    Text(AppLocalizations.of(context).t('home.projects'), style: _sectionTitleStyle),
                    const SizedBox(height: 12),
                    if (favorites.isEmpty && others.isEmpty)
                      _buildEmptyState()
                    else
                      _buildProjectList(others, repo, isWide),
                    const SizedBox(height: 32),
                    Text(
                      'Tip: Create a new project or import a .sma to get started.',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildQuickStart(DataRepository repo) {
    final scheme = Theme.of(context).colorScheme;
    final surface = scheme.surfaceContainerHigh.withOpacity(
      Theme.of(context).brightness == Brightness.dark ? 0.3 : 0.45,
    );
    // Compute last-opened project for convenient continue action
    Project? last;
    if (repo.projects.isNotEmpty) {
      last = repo.projects.reduce((a, b) => (a.lastOpened >= b.lastOpened) ? a : b);
    }
    return Card(
      elevation: 0,
      color: surface,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FilledButton.icon(
              icon: const Icon(Icons.design_services_outlined),
              label: Text(AppLocalizations.of(context).t('quick.model_editor')),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ModelEditorScreen()),
                );
              },
            ),
            if (last != null)
              FilledButton.icon(
                icon: const Icon(Icons.play_arrow),
                label: Text(AppLocalizations.of(context).t('quick.continue')),
                onPressed: () => _openProject(last!),
              ),
            FilledButton.icon(
              icon: const Icon(Icons.add_circle_outline),
              label: Text(AppLocalizations.of(context).t('quick.new_project')),
              onPressed: _createNewAnimation,
            ),
            FilledButton.icon(
              icon: const Icon(Icons.folder_open),
              label: Text(AppLocalizations.of(context).t('quick.import')),
              onPressed: _openAnimationFile,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      decoration: InputDecoration(
        labelText: AppLocalizations.of(context).t('home.search'),
        prefixIcon: const Icon(Icons.search),
      ),
      onChanged: (value) {
        setState(() {
          _searchQuery = value.trim();
        });
      },
    );
  }

  Widget _buildProjectList(
    List<Project> projects,
    DataRepository repo,
    bool isWide,
  ) {
    if (projects.isEmpty) {
      return Text(
        _searchQuery.isEmpty
            ? AppLocalizations.of(context).t('tip.quick')
            : AppLocalizations.of(context).t('home.no_match'),
        style: Theme.of(context).textTheme.bodyMedium,
      );
    }

    return Column(
      children: projects
          .map(
            (project) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _buildProjectCard(project, repo, isWide),
            ),
          )
          .toList(),
    );
  }

  Widget _buildProjectCard(Project project, DataRepository repo, bool isWide) {
    final subtitle =
        '${project.sequences.length} sequences | Last opened: ${_formatLastOpened(project.lastOpened)}';

    final actions = <Widget>[
      if (project.sequences.isNotEmpty)
        PopupMenuButton<int>(
          tooltip: 'Open sequence',
          icon: const Icon(Icons.playlist_play),
          itemBuilder: (ctx) => project.sequences
              .asMap()
              .entries
              .map(
                (entry) => PopupMenuItem<int>(
                  value: entry.key,
                  child: Text(entry.value.name),
                ),
              )
              .toList(),
          onSelected: (index) {
            final seq = project.sequences[index];
            _openProject(project, sequence: seq);
          },
        ),
      if (isWide)
        IconButton(
          tooltip: 'Manage sequences',
          icon: const Icon(Icons.list_alt),
          onPressed: () => _manageSequences(project),
        ),
      IconButton(
        tooltip: 'Open project',
        icon: const Icon(Icons.open_in_new),
        onPressed: () => _openProject(project),
      ),
      IconButton(
        tooltip: project.favorite ? 'Unpin from favorites' : 'Pin to favorites',
        icon: Icon(project.favorite ? Icons.star : Icons.star_border),
        onPressed: () => _toggleFavorite(project),
      ),
      if (isWide) ...[
        IconButton(
          tooltip: 'Export (.sma)',
          icon: const Icon(Icons.ios_share),
          onPressed: () => _exportProject(project),
        ),
        IconButton(
          tooltip: 'Rename project',
          icon: const Icon(Icons.drive_file_rename_outline),
          onPressed: () => _renameProject(project),
        ),
        IconButton(
          tooltip: 'Delete project',
          icon: const Icon(Icons.delete_outline),
          onPressed: () => _deleteProject(project),
        ),
      ] else
        PopupMenuButton<String>(
          tooltip: 'More',
          icon: const Icon(Icons.more_vert),
          onSelected: (v) async {
            switch (v) {
              case 'manage':
                await _manageSequences(project);
                break;
              case 'export':
                await _exportProject(project);
                break;
              case 'rename':
                await _renameProject(project);
                break;
              case 'delete':
                await _deleteProject(project);
                break;
            }
          },
          itemBuilder: (_) => const [
            PopupMenuItem(value: 'manage', child: Text('Manage sequences')),
            PopupMenuItem(value: 'export', child: Text('Export (.sma)')),
            PopupMenuItem(value: 'rename', child: Text('Rename')),
            PopupMenuItem(value: 'delete', child: Text('Delete')),
          ],
        ),
    ];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 12),
            OverflowBar(
              spacing: 8,
              overflowSpacing: 4,
              alignment: isWide ? MainAxisAlignment.start : MainAxisAlignment.center,
              children: actions,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    final scheme = Theme.of(context).colorScheme;
    final color = scheme.surfaceContainerHigh.withOpacity(
      Theme.of(context).brightness == Brightness.dark ? 0.25 : 0.5,
    );
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).dividerColor.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create your first project',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 12),
          Text(
            'Start with "New Project" or import an existing .sma file.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  List<Project> _sortedAndFiltered(Iterable<Project> projects) {
    final query = _searchQuery.toLowerCase();
    final filtered = projects
        .where(
          (p) => query.isEmpty || p.name.toLowerCase().contains(query),
        )
        .toList();

    filtered.sort((a, b) {
      final lastA = a.lastOpened;
      final lastB = b.lastOpened;
      if (lastA != lastB) return lastB.compareTo(lastA);
      return a.name.toLowerCase().compareTo(b.name.toLowerCase());
    });

    return filtered;
  }

  String _formatLastOpened(int timestamp) {
    if (timestamp <= 0) return 'never';
    final now = DateTime.now();
    final last = DateTime.fromMillisecondsSinceEpoch(timestamp).toLocal();
    final diff = now.difference(last);
    if (diff.inSeconds < 60) return 'just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    if (diff.inDays < 7) return '${diff.inDays}d ago';
    String two(int value) => value.toString().padLeft(2, '0');
    return '${last.year}-${two(last.month)}-${two(last.day)}';
  }

  // Removed: quick open to editor (duplicated flow with New Animation / project list)

  Future<void> _openProject(Project project, {Sequence? sequence}) async {
    _dismissTransientUI();
    final repo = context.read<AppState>().repo;
    var current = repo.projects.firstWhere(
      (p) => p.id == project.id,
      orElse: () => project,
    );

    Sequence? target;
    if (sequence != null) {
      target = current.sequences.firstWhere(
        (s) => s.id == sequence.id,
        orElse: () => sequence,
      );
    } else if (current.sequences.isNotEmpty) {
      target = current.sequences.first;
    }

    if (target == null) {
      final created = await repo.createSequence(current, 'Scene 1');
      current = repo.projects.firstWhere(
        (p) => p.id == current.id,
        orElse: () => current,
      );
      target = current.sequences.firstWhere(
        (s) => s.id == created.id,
        orElse: () => created,
      );
    }

    await repo.markProjectOpened(current);
    if (!mounted) return;
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute(
        builder: (_) => AnimationEditorScreen(
          project: current,
          sequence: target!,
        ),
      ),
    );
    _refresh();
  }

  // Removed: helper for quick open (see above)

  Future<void> _toggleFavorite(Project project) async {
    final repo = context.read<AppState>().repo;
    await repo.setProjectFavorite(project, !project.favorite);
    _refresh();
  }

  Future<void> _renameProject(Project project) async {
    final repo = context.read<AppState>().repo;
    final name = await _promptText('Rename Project', project.name);
    if (name == null) return;
    final trimmed = name.trim();
    if (trimmed.isEmpty) return;
    await repo.renameProject(project, trimmed);
    _refresh();
  }

  Future<void> _deleteProject(Project project) async {
    final repo = context.read<AppState>().repo;
    final confirmed = await _confirm(
      'Delete "${project.name}"? This cannot be undone.',
    );
    if (!confirmed) return;
    await repo.deleteProject(project);
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${AppLocalizations.of(context).t('common.deleted')} ${project.name}')),
    );
    _refresh();
  }

  Future<void> _exportProject(Project project) async {
    final repo = context.read<AppState>().repo;
    try {
      final bundle = await repo.exportBundle(project);

      if (Platform.isAndroid || Platform.isIOS) {
        await Share.shareXFiles(
          [XFile(bundle.path)],
          subject: project.name,
          text: 'Exported from BOKU Animator',
        );
        return;
      }

      String? savePath;
      try {
        savePath = await FilePicker.platform.saveFile(
          dialogTitle: 'Save Animation File',
          fileName: '${project.name}.sma',
          type: FileType.custom,
          allowedExtensions: const ['sma'],
        );
      } catch (_) {
        await Share.shareXFiles(
          [XFile(bundle.path)],
          subject: project.name,
          text: 'Exported from BOKU Animator',
        );
        return;
      }

      if (savePath == null) return;
      await bundle.copy(savePath);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${AppLocalizations.of(context).t('export.bundle_exported')} $savePath')),
      );
    } catch (err) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${AppLocalizations.of(context).t('export.bundle_failed')} $err')),
      );
    }
  }

  Future<void> _openAnimationFile() async {
    _dismissTransientUI();
    final repo = context.read<AppState>().repo;
    final result = await FilePicker.platform.pickFiles(
      withData: Platform.isAndroid || Platform.isIOS,
      type: FileType.custom,
      allowedExtensions: const ['sma', 'zip'],
    );
    if (result == null || result.files.isEmpty) return;
    final pickedFile = result.files.single;

    File? src;
    File? tmp;
    if (pickedFile.path != null) {
      src = File(pickedFile.path!);
    } else if (pickedFile.bytes != null) {
      final ext = path.extension(pickedFile.name);
      final tmpPath = path.join(
        Directory.systemTemp.path,
        'bokuanimator_import_${DateTime.now().millisecondsSinceEpoch}${ext.isEmpty ? '.sma' : ext}',
      );
      tmp = File(tmpPath);
      await tmp.writeAsBytes(pickedFile.bytes!, flush: true);
      src = tmp;
    }
    if (src == null) return;

    try {
      final project = await repo.importBundle(src);
      final sequence = project.sequences.isNotEmpty
          ? project.sequences.first
          : await repo.createSequence(project, 'Scene 1');
      await repo.markProjectOpened(project);
      if (!mounted) return;
      Navigator.of(context, rootNavigator: true).push(
        MaterialPageRoute(
          builder: (_) => AnimationEditorScreen(
            project: project,
            sequence: sequence,
          ),
        ),
      );
      _refresh();
    } catch (err) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${AppLocalizations.of(context).t('file.open_failed')} $err')),
      );
    } finally {
      try {
        if (tmp != null && await tmp.exists()) {
          await tmp.delete();
        }
      } catch (_) {}
    }
  }

  Future<void> _createNewAnimation() async {
    // Navigate to a full-screen creation page (no modal barrier)
    // to avoid any barrier/focus issues seen on some devices.
    // The page will handle creation flow and route to the editor.
    if (!mounted) return;
    await Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const NewAnimationScreen()),
    );
    _refresh();
  }

  Future<void> _manageSequences(Project project) async {
    final repo = context.read<AppState>().repo;
    Project current = repo.projects.firstWhere(
      (p) => p.id == project.id,
      orElse: () => project,
    );

    await showDialog<void>(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.transparent,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (dialogContext, setDialogState) {
            current = repo.projects.firstWhere(
              (p) => p.id == project.id,
              orElse: () => current,
            );
            return AlertDialog(
              title: Text(AppLocalizations.of(context).t('manage.title')),
              content: SizedBox(
                width: 420,
                child: current.sequences.isEmpty
                    ? Text(AppLocalizations.of(context).t('manage.empty'))
                    : ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          final seq = current.sequences[index];
                          return ListTile(
                            title: Text(seq.name),
                            subtitle: Text(
                              'Frames: ${seq.setting.totalFrames} | FPS: ${seq.setting.fps}',
                            ),
                            trailing: Wrap(
                              spacing: 4,
                              children: [
                                IconButton(
                                  tooltip: AppLocalizations.of(context).t('manage.open'),
                                  icon: const Icon(Icons.open_in_new),
                                  onPressed: () {
                                    Navigator.of(dialogContext).pop();
                                    _openProject(current, sequence: seq);
                                  },
                                ),
                                IconButton(
                                  tooltip: AppLocalizations.of(context).t('manage.rename'),
                                  icon: const Icon(Icons.edit),
                                  onPressed: () async {
                                    final name = await _promptText(
                                      AppLocalizations.of(context).t('manage.rename'),
                                      seq.name,
                                    );
                                    if (name == null) return;
                                    final trimmed = name.trim();
                                    if (trimmed.isEmpty) return;
                                    await repo.renameSequence(current, seq, trimmed);
                                    setDialogState(() {});
                                    _refresh();
                                  },
                                ),
                                IconButton(
                                  tooltip: AppLocalizations.of(context).t('manage.duplicate'),
                                  icon: const Icon(Icons.copy),
                                  onPressed: () async {
                                    await repo.duplicateSequence(current, seq);
                                    setDialogState(() {});
                                    _refresh();
                                  },
                                ),
                                IconButton(
                                  tooltip: AppLocalizations.of(context).t('manage.delete'),
                                  icon: const Icon(Icons.delete_outline),
                                  onPressed: () async {
                                    final ok = await _confirm('${AppLocalizations.of(context).t('manage.delete')} "${seq.name}"?');
                                    if (!ok) return;
                                    await repo.deleteSequence(current, seq);
                                    setDialogState(() {});
                                    _refresh();
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (_, __) => const Divider(height: 1),
                        itemCount: current.sequences.length,
                      ),
              ),
              actions: [
                TextButton.icon(
                  onPressed: () async {
                    final name = 'Scene ${current.sequences.length + 1}';
                    await repo.createSequence(current, name);
                    setDialogState(() {});
                    _refresh();
                  },
                  icon: const Icon(Icons.add),
                  label: Text(AppLocalizations.of(context).t('manage.add')),
                ),
                TextButton(
                  onPressed: () => Navigator.of(dialogContext).pop(),
                  child: Text(AppLocalizations.of(context).t('manage.close')),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Future<String?> _promptText(String title, String initialValue) async {
    final controller = TextEditingController(text: initialValue);
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.transparent,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: controller,
            autofocus: true,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: Text(AppLocalizations.of(context).t('common.cancel')),
            ),
            FilledButton(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: Text(AppLocalizations.of(context).t('common.ok')),
            ),
          ],
        );
      },
    );
    return result == true ? controller.text : null;
  }

  Future<bool> _confirm(String message) async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.transparent,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(AppLocalizations.of(context).t('common.confirm')),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: Text(AppLocalizations.of(context).t('common.cancel')),
            ),
            FilledButton(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: Text(AppLocalizations.of(context).t('common.delete')),
            ),
          ],
        );
      },
    );
    return result == true;
  }

  void _refresh() {
    if (mounted) {
      setState(() {});
    }
  }
}

// Removed: _ProjectLaunchTarget (legacy quick editor entry)

