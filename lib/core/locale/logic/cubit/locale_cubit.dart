import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_state.dart';
import 'package:store_ify/core/locale/logic/locale_repo.dart';
import 'package:store_ify/core/locale/models/change_api_lang_params.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';

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

  Future<void> _changeLang(String langCode) async {
    await _localeRepo.changeLang(langCode);
  }

  void _changeApiLang(String langCode, BuildContext context) async {
    final result = await _localeRepo.changeApiLang(
      ChangeApiLangParams(lang: langCode),
    );
    result.when(
      success: (_) async => await _emitNewLocale(langCode),
      error: (error) => CustomToast.showToast(
        context: context,
        messageKey: error.error ?? '',
        state: CustomToastState.error,
      ),
    );
  }

  Future<void> _emitNewLocale(String langCode) async {
    await _changeLang(langCode);
    emit(LocaleState.changeLocale(Locale(langCode)));
  }

  void _toEnglish(BuildContext context) =>
      _changeApiLang(AppStrings.englishLangCode, context);

  void _toArabic(BuildContext context) =>
      _changeApiLang(AppStrings.arabicLangCode, context);

  void toggleLocale(BuildContext context) {
    state.locale.languageCode == AppStrings.englishLangCode
        ? _toArabic(context)
        : _toEnglish(context);
  }

  bool get isArabic => state.locale.languageCode == AppStrings.arabicLangCode;
}
