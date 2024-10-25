import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:store_ify/core/locale/app_localizations.dart';
import 'package:store_ify/core/utils/app_strings.dart';

class AppLocalizationsSetup {
  static const Iterable<Locale> supportedLocales = [
    Locale(AppStrings.englishLangCode),
    Locale(AppStrings.arabicLangCode),
  ];

  static const Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates =
      [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    DefaultCupertinoLocalizations.delegate
  ];

  static Locale? localeResolutionCallback(
    Locale? locale,
    Iterable<Locale>? supportedLocales,
  ) {
    for (Locale supportedLocale in supportedLocales!) {
      if (supportedLocale.languageCode == locale!.languageCode &&
          supportedLocale.countryCode == locale.countryCode) {
        return supportedLocale;
      }
    }
    return supportedLocales.first;
  }
}
