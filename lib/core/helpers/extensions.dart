import 'package:flutter/material.dart';
import 'package:store_ify/core/locale/app_localizations.dart';

extension NullOrEmptyString on String? {
  /// Check if the string is null or empty
  bool get nullOrEmpty => this == null || this == '';
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

extension CheckDarkThemeActivation on BuildContext {
  bool get isDarkModeActive => Theme.of(this).brightness == Brightness.dark;
}
