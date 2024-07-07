import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_state.dart';
import 'package:store_ify/core/locale/logic/locale_repo.dart';
import 'package:store_ify/core/utils/app_strings.dart';

class LocaleCubit extends Cubit<LocaleState> {
  final LocaleRepo _localeRepo;

  LocaleCubit(
    this._localeRepo,
  ) : super(
          const LocaleState.initial(Locale(AppStrings.englishLangCode)),
        );

  String currentLang = AppStrings.englishLangCode;

  void getSavedLang() async {
    final savedLang = await _localeRepo.getSavedLang();
    currentLang = savedLang;
    emit(LocaleState.changeLocale(Locale(savedLang)));
  }

  void _changeLang(String langCode) async {
    await _localeRepo.changeLang(langCode);
    currentLang = langCode;
    emit(LocaleState.changeLocale(Locale(langCode)));
  }

  void toEnglish() => _changeLang(AppStrings.englishLangCode);

  void toArabic() => _changeLang(AppStrings.arabicLangCode);
}
