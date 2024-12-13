import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/app_regex.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class AuthValidator {
  static String? validatePasswordField(BuildContext context, {String? value}) {
    if (value == null || value.isEmpty) {
      return context.tr(LocaleKeys.passwordRequired);
    } else if (value.length < 8) {
      return context.tr(LocaleKeys.passwordInvalidLength);
    } else if (!AppRegex.passwordHasCapitalCharacter(value)) {
      return context.tr(LocaleKeys.passwordContainsUppercase);
    } else if (!AppRegex.passwordHasLowercaseCharacter(value)) {
      return context.tr(LocaleKeys.passwordContainsLowercase);
    } else if (!AppRegex.passwordHasNumber(value)) {
      return context.tr(LocaleKeys.passwordContainsDigit);
    } else if (!AppRegex.passwordHasSpecialCharacter(value)) {
      return context.tr(LocaleKeys.passwordContainsSpecial);
    }
    return null;
  }

  static String? validateEmailField(BuildContext context, {String? value}) {
    if (value == null || value.isEmpty) {
      return context.tr(LocaleKeys.emailRequired);
    } else if (!AppRegex.isEmailValid(value)) {
      return context.tr(LocaleKeys.emailInvalid);
    }
    return null;
  }

  static String? validateNameField(BuildContext context, {String? value}) {
    if (value!.isEmpty) {
      return context.tr(LocaleKeys.nameRequired);
    }
    if (value.length < 3) {
      return context.tr(LocaleKeys.nameInvalidLength);
    }
    return null;
  }

  static String? validateConfirmPasswordField(
    BuildContext context, {
    String? value,
    required String password,
    required String confirmPassword,
  }) {
    if (value!.isEmpty || password != confirmPassword) {
      return context.tr(LocaleKeys.passwordsDontMatch);
    }

    return null;
  }
}
