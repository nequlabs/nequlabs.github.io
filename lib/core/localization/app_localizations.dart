import 'package:flutter/material.dart';
import 'translations/en.dart';
import 'translations/tr.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': en,
    'tr': tr,
  };

  String get appTitle =>
      _localizedValues[locale.languageCode]?['appTitle'] ??
      _localizedValues['en']!['appTitle']!;
  String get appTagline =>
      _localizedValues[locale.languageCode]?['appTagline'] ??
      _localizedValues['en']!['appTagline']!;
  String get appDescription =>
      _localizedValues[locale.languageCode]?['appDescription'] ??
      _localizedValues['en']!['appDescription']!;
  String get ourApplications =>
      _localizedValues[locale.languageCode]?['ourApplications'] ??
      _localizedValues['en']!['ourApplications']!;
  String get appStore =>
      _localizedValues[locale.languageCode]?['appStore'] ??
      _localizedValues['en']!['appStore']!;
  String get playStore =>
      _localizedValues[locale.languageCode]?['playStore'] ??
      _localizedValues['en']!['playStore']!;
  String get copyright =>
      _localizedValues[locale.languageCode]?['copyright'] ??
      _localizedValues['en']!['copyright']!;
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
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
