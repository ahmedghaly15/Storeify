import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_ify/core/locale/app_localizations_delegate.dart';
import 'dart:convert' show json;

import 'package:store_ify/core/utils/app_strings.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();
  late Map<String, String> _localizedStrings;
  Future<void> load() async {
    String jsonString = await rootBundle
        .loadString('${AppStrings.langPath}/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings = jsonMap.map<String, String>((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String? translate(String key) => _localizedStrings[key];

  bool get isEnLocale => locale.languageCode == 'en';
}
