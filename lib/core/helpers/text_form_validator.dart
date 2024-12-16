import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/app_regex.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class TextFormValidator {
  static String? validatePasswordField(BuildContext context, {String? value}) {
    if (value.isNullOrEmpty) {
      return context.tr(LocaleKeys.passwordRequired);
    } else if (value!.length < 8) {
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
    if (value.isNullOrEmpty) {
      return context.tr(LocaleKeys.emailRequired);
    } else if (!AppRegex.isEmailValid(value!)) {
      return context.tr(LocaleKeys.emailInvalid);
    }
    return null;
  }

  static String? validateNameField(BuildContext context, {String? value}) {
    if (value.isNullOrEmpty) {
      return context.tr(LocaleKeys.nameRequired);
    }
    if (value!.length < 3) {
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
    if (value.isNullOrEmpty || password != confirmPassword) {
      return context.tr(LocaleKeys.passwordsDontMatch);
    }
    return null;
  }

  static String? validateField(BuildContext context, String? value) {
    if (value.isNullOrEmpty) {
      return context.tr(LocaleKeys.fieldRequired);
    }
    return null;
  }

  static String? validateCardNumberField(BuildContext context, String? val) {
    if (val.isNullOrEmpty) {
      return context.tr(LocaleKeys.cardNumberRequired);
    } else if (!AppRegex.containsOnlyDigits(val!)) {
      return context.tr(LocaleKeys.cardNumberDigitsOnly);
    } else if (val.length != 16) {
      return context.tr(LocaleKeys.cardNumberInvalidLength);
    } else if (!_isValidCardNumber(val)) {
      return context.tr(LocaleKeys.cardNumberInvalid);
    }
    return null;
  }

  // Validate the card number using the Luhn algorithm
  // It checks if the card number passes the Luhn algorithm, which is commonly used to validate credit card numbers
  static bool _isValidCardNumber(String cardNumber) {
    int sum = 0;
    bool alternate = false;

    // Traverse the card number from right to left
    for (int i = cardNumber.length - 1; i >= 0; i--) {
      int n = int.parse(cardNumber[i]);

      if (alternate) {
        n *= 2;
        if (n > 9) {
          n -= 9;
        }
      }

      sum += n;
      alternate = !alternate;
    }

    return sum % 10 == 0;
  }

  static String? validateCardHolderNumberField(
      BuildContext context, String? val) {
    if (val.isNullOrEmpty) {
      return context.tr(LocaleKeys.cardNumberRequired);
    } else if (!AppRegex.containsOnlyDigits(val!)) {
      return context.tr(LocaleKeys.cardNumberDigitsOnly);
    } else if (val.length < 13 || val.length > 19) {
      return context.tr(LocaleKeys.cardNumberInvalidLength);
    }
    return null;
  }

  static String? validateCvvField(BuildContext context, String? val) {
    if (val.isNullOrEmpty) {
      return context.tr(LocaleKeys.cvvRequired);
    } else if (!AppRegex.containsOnlyDigits(val!)) {
      return context.tr(LocaleKeys.cvvDigitsOnly);
    } else if (val.length < 3 || val.length > 4) {
      return context.tr(LocaleKeys.cvvInvalidLength);
    }
    return null;
  }

  static String? validateCheckoutDateField(BuildContext context, String? val) {
    if (val.isNullOrEmpty) {
      return context.tr(LocaleKeys.fieldRequired);
    } else if (val! ==
        DateFormat(AppStrings.checkoutDateFormat).format(DateTime.now())) {
      return context.tr(LocaleKeys.DATE_AFTER_TODAY);
    }
    return null;
  }
}
