import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/repository.dart';
import 'l10n/app_localizations.dart';
import 'l10n/supported_locales.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppState extends ChangeNotifier {
  final DataRepository repo = DataRepository();
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  bool _perfOverlay = false;
  bool get perfOverlay => _perfOverlay;
  bool _initialized = false;
  bool get initialized => _initialized;
  String? _error;
  String? get error => _error;
  Locale? _locale; // null = system
  Locale? get locale => _locale;

  Future<void> init() async {
    try {
      await repo.init();
      _initialized = true;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _initialized = true;
      notifyListeners();
    }
  }

  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.dark
        ? ThemeMode.light
        : ThemeMode.dark;
    notifyListeners();
  }

  void togglePerfOverlay() {
    _perfOverlay = !_perfOverlay;
    notifyListeners();
  }

  void setLocale(Locale? locale) {
    _locale = locale;
    notifyListeners();
  }
}

class AppRoot extends StatelessWidget {
  final Widget home;
  const AppRoot({super.key, required this.home});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppState()..init(),
      child: Consumer<AppState>(
        builder: (_, app, __) => MaterialApp(
          title: 'BOKU Animator',
          debugShowCheckedModeBanner: false,
          theme: _lightTheme(),
          darkTheme: _darkTheme(),
          themeMode: app.themeMode,
          locale: app.locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: kSupportedLocales,
          showPerformanceOverlay: app.perfOverlay,
          home: home,
        ),
      ),
    );
  }
}

ThemeData _lightTheme() {
  final cs = ColorScheme.fromSeed(
    seedColor: const Color(0xFFFF3D00),
    brightness: Brightness.light,
  );
  return ThemeData(
    colorScheme: cs,
    scaffoldBackgroundColor: const Color(0xFFF7F7F7),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      centerTitle: false,
      surfaceTintColor: Colors.transparent,
    ),
    cardColor: Colors.white,
    tooltipTheme: TooltipThemeData(
      waitDuration: const Duration(milliseconds: 300),
      textStyle: const TextStyle(color: Colors.white, fontSize: 12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.85),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith((s) => s.contains(MaterialState.disabled) ? Colors.black45 : Colors.black87),
      ),
    ),
    toggleButtonsTheme: ToggleButtonsThemeData(
      selectedColor: cs.onPrimary,
      color: cs.onSurface.withOpacity(0.75),
      fillColor: cs.primary,
      borderColor: cs.outline,
      selectedBorderColor: cs.primary,
      borderRadius: BorderRadius.circular(10),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Colors.black87,
      contentTextStyle: TextStyle(color: Colors.white),
      behavior: SnackBarBehavior.floating,
    ),
    useMaterial3: true,
  );
}

ThemeData _darkTheme() {
  final cs = ColorScheme.fromSeed(
    seedColor: const Color(0xFFFF7043),
    brightness: Brightness.dark,
  );
  return ThemeData(
    colorScheme: cs,
    scaffoldBackgroundColor: const Color(0xFF121212),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1E1E1E),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      surfaceTintColor: Colors.transparent,
    ),
    tooltipTheme: TooltipThemeData(
      waitDuration: const Duration(milliseconds: 300),
      textStyle: const TextStyle(color: Colors.black, fontSize: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith((s) => s.contains(MaterialState.disabled) ? Colors.white60 : Colors.white),
      ),
    ),
    toggleButtonsTheme: ToggleButtonsThemeData(
      selectedColor: cs.onPrimary,
      color: cs.onSurface.withOpacity(0.9),
      fillColor: cs.primary,
      borderColor: cs.outline,
      selectedBorderColor: cs.primary,
      borderRadius: BorderRadius.circular(10),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.white.withOpacity(0.9),
      contentTextStyle: const TextStyle(color: Colors.black),
      behavior: SnackBarBehavior.floating,
    ),
    useMaterial3: true,
  );
}
