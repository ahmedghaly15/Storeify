import 'package:flutter/material.dart';

extension NullOrEmptyString on String? {
  /// Check if the string is null or empty
  bool get nullOrEmpty => this == null || this == '';
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
