import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/app_localizations.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/utils/app_strings.dart';

extension NullOrEmptyString on String? {
  /// Check if the string is null or empty
  bool get nullOrEmpty => this == null || this == '';
}

extension IsCurrentLocaleEnglish on BuildContext {
  /// Check if the current locale is English
  bool get isEnglish =>
      read<LocaleCubit>().currentLang == AppStrings.englishLangCode;
}

extension Translate on BuildContext {
  /// Translate the given [key] to the current locale
  String translate(String key) => AppLocalizations.of(this)!.translate(key)!;
}

extension UnfocusKeyboard on BuildContext {
  void unfocusKeyboard() => FocusScope.of(this).unfocus();
}

extension RequestFocusOnFocusNode on BuildContext {
  void requestFocus(FocusNode node) => FocusScope.of(this).requestFocus(node);
}
