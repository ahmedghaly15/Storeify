import 'package:flutter/material.dart';

class AuthHelper {
  static String? validatePasswordField(String? value) {
    if (value!.isEmpty) {
      return 'Please enter password';
    } else if (value.length < 6) {
      return "Password must be more than 5 characters";
    }

    return null;
  }

  static String? validateEmailField(String? value) {
    if (value!.isEmpty) {
      return 'email must not be empty';
    }
    if (!value.contains('@')) {
      return "email should contains @";
    }
    return null;
  }

  static String? validateUserNameField(String? value) {
    if (value!.isEmpty) {
      return 'Username must not be empty';
    }
    if (value.length < 6) {
      return "Username must be more than 5 character";
    }
    return null;
  }

  static String? validateConfirmPasswordField({
    String? value,
    required String password,
    required String confirmPassword,
  }) {
    if (value!.isEmpty) {
      return "Password is required";
    } else if (value.length < 6) {
      return "Password must be more than 5 characters";
    } else if (password != confirmPassword) {
      return "Doesn't match password";
    }

    return null;
  }

  static void keyboardUnfocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
}
