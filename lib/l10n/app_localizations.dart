import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';

class AppLocalizations {
  final Locale locale;
  late final Map<String, String> _map;

  AppLocalizations._(this.locale, this._map);

  static AppLocalizations of(BuildContext context) => Localizations.of<AppLocalizations>(context, AppLocalizations)!;

  String t(String key) => _map[key] ?? key;

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true; // We handle fallback internally

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final code = _localeCode(locale);
    final Map<String, String> map = await _loadJson('assets/l10n/$code.json')
        .catchError((_) => _loadJson('assets/l10n/en.json'));
    return AppLocalizations._(locale, map);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) => false;

  static String _localeCode(Locale l) => l.languageCode.toLowerCase();

  static Future<Map<String, String>> _loadJson(String path) async {
    final s = await rootBundle.loadString(path).timeout(const Duration(seconds: 2));
    final m = jsonDecode(s) as Map<String, dynamic>;
    return m.map((k, v) => MapEntry(k, v.toString()));
  }
}
