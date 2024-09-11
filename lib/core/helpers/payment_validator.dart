import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/app_regex.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';

class PaymentValidator {
  PaymentValidator._();

  static String? validateField(BuildContext context, String? value) {
    if (value!.isEmpty) {
      return context.translate(LangKeys.fieldRequired);
    }
    return null;
  }

  static String? validateCardNumberField(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return context.translate(LangKeys.cardNumberRequired);
    } else if (!AppRegex.containsOnlyDigits(val)) {
      return context.translate(LangKeys.cardNumberDigitsOnly);
    } else if (val.length != 16) {
      return context.translate(LangKeys.cardNumberInvalidLength);
    } else if (!_isValidCardNumber(val)) {
      return context.translate(LangKeys.cardNumberInvalid);
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

  static String? cardHolderNumberField(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return context.translate(LangKeys.cardNumberRequired);
    } else if (!AppRegex.containsOnlyDigits(val)) {
      return context.translate(LangKeys.cardNumberDigitsOnly);
    } else if (val.length < 13 || val.length > 19) {
      return context.translate(LangKeys.cardNumberInvalidLength);
    }
    return null;
  }

  static String? cvvField(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return context.translate(LangKeys.cvvRequired);
    } else if (!AppRegex.containsOnlyDigits(val)) {
      return context.translate(LangKeys.cvvDigitsOnly);
    } else if (val.length < 3 || val.length > 4) {
      return context.translate(LangKeys.cvvInvalidLength);
    }
    return null;
  }
}
