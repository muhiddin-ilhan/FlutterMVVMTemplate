import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  static AppLocalizations? _instance;
  final Locale _locale;
  Map<String, String> _strings = const {};

  AppLocalizations(this._locale);

  static AppLocalizations? of(BuildContext context) {
    _instance ??= Localizations.of<AppLocalizations>(context, AppLocalizations);
    return _instance;
  }

  static String getString(String key) {
    return _instance?._strings[key] ?? "";
  }

  Future<void> _loadStrings() async {
    final String jsonString = await rootBundle.loadString(
      "asset/lang/${_locale.languageCode}.json",
    );
    _strings = Map.from(jsonDecode(jsonString));
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
  _AppLocalizationsDelegate();
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'tr'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations appLocalization = AppLocalizations(locale);
    await appLocalization._loadStrings();
    return appLocalization;
  }

  @override
  bool shouldReload(LocalizationsDelegate old) {
    return false;
  }
}