import 'package:flutter/material.dart' show Locale, LocalizationsDelegate;
import 'package:store_ify/core/locale/app_localizations.dart';
import 'package:store_ify/core/utils/app_strings.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
    return [AppStrings.englishLangCode, AppStrings.arabicLangCode]
        .contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations appLocalizations = AppLocalizations(locale);
    await appLocalizations.load();
    return appLocalizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
