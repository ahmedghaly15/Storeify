import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_state.dart';
import 'package:store_ify/core/locale/logic/locale_repo.dart';
import 'package:store_ify/core/locale/models/change_api_lang_params.dart';
import 'package:store_ify/core/utils/app_strings.dart';

class LocaleCubit extends Cubit<LocaleState> {
  final LocaleRepo _localeRepo;

  LocaleCubit(
    this._localeRepo,
  ) : super(LocaleState.initial());

  void getSavedLang() async {
    final savedLang = await _localeRepo.getSavedLang();
    emit(
      state.copyWith(
        status: LocaleStateStatus.changeLocaleLocally,
        locale: Locale(savedLang),
      ),
    );
  }

  Future<void> _changeLangLocally(String langCode) async {
    await _localeRepo.changeLang(langCode);
    emit(
      state.copyWith(
        status: LocaleStateStatus.changeLocaleLocally,
        locale: Locale(langCode),
      ),
    );
  }

  void changeApiLang(String langCode) async {
    final result = await _localeRepo.changeApiLang(
      ChangeApiLangParams(lang: langCode),
    );
    result.when(
      success: (_) => emit(
          state.copyWith(status: LocaleStateStatus.changeApiLocaleSuccess)),
      error: (error) => emit(
        state.copyWith(
          status: LocaleStateStatus.changeApiLocaleFailure,
          error: error.error ?? '',
        ),
      ),
    );
  }

  void _toEnglish() => _changeLangLocally(AppStrings.englishLangCode);

  void _toArabic() => _changeLangLocally(AppStrings.arabicLangCode);

  void toggleLocale() {
    state.locale.languageCode == AppStrings.englishLangCode
        ? _toArabic()
        : _toEnglish();
  }

  bool get isArabic => state.locale.languageCode == AppStrings.arabicLangCode;
}
