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

  void getSavedLang() async {
    final savedLang = await _localeRepo.getSavedLang();
    emit(LocaleState.changeLocale(Locale(savedLang)));
  }

  void _changeLang(String langCode) async {
    await _localeRepo.changeLang(langCode);
    emit(LocaleState.changeLocale(Locale(langCode)));
  }

  void _toEnglish() => _changeLang(AppStrings.englishLangCode);

  void _toArabic() => _changeLang(AppStrings.arabicLangCode);

  void toggleLocale() {
    state.locale.languageCode == AppStrings.englishLangCode
        ? _toArabic()
        : _toEnglish();
  }

  bool get isArabic => state.locale.languageCode == AppStrings.arabicLangCode;
}
