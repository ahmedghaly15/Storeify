import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/app_regex.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';

class AuthValidator {
  static String? validatePasswordField(BuildContext context, {String? value}) {
    if (value == null || value.isEmpty) {
      return context.translate(LangKeys.passwordRequired);
    } else if (value.length < 8) {
      return context.translate(LangKeys.passwordInvalidLength);
    } else if (!AppRegex.passwordHasCapitalCharacter(value)) {
      return context.translate(LangKeys.passwordContainsUppercase);
    } else if (!AppRegex.passwordHasLowercaseCharacter(value)) {
      return context.translate(LangKeys.passwordContainsLowercase);
    } else if (!AppRegex.passwordHasNumber(value)) {
      return context.translate(LangKeys.passwordContainsDigit);
    } else if (!AppRegex.passwordHasSpecialCharacter(value)) {
      return context.translate(LangKeys.passwordContainsSpecial);
    }
    return null;
  }

  static String? validateEmailField(BuildContext context, {String? value}) {
    if (value == null || value.isEmpty) {
      return context.translate(LangKeys.emailRequired);
    } else if (!AppRegex.isEmailValid(value)) {
      return context.translate(LangKeys.emailInvalid);
    }
    return null;
  }

  static String? validateNameField(BuildContext context, {String? value}) {
    if (value!.isEmpty) {
      return context.translate(LangKeys.nameRequired);
    }
    if (value.length < 3) {
      return context.translate(LangKeys.nameInvalidLength);
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
      return context.translate(LangKeys.passwordsDontMatch);
    }

    return null;
  }
}
