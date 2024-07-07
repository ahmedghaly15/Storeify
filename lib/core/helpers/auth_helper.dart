import 'package:store_ify/core/helpers/app_regex.dart';

class AuthHelper {
  static String? validatePasswordField({String? value}) {
    if (value == null || value.isEmpty) {
      return "Password can't be blank!";
    } else if (!AppRegex.isPasswordValid(value)) {
      return "Please enter a valid password";
    }
    return null;
  }

  static String? validateEmailField({String? value}) {
    if (value == null || value.isEmpty) {
      return "Email can't be blank!";
    } else if (!AppRegex.isEmailValid(value)) {
      return "Please enter a valid email";
    }
    return null;
  }

  static String? validateNameField({String? value}) {
    if (value!.isEmpty) {
      return "Name can't be blank!";
    }
    if (value.length < 3) {
      return "Name must be more than 3 characters";
    }
    return null;
  }

  static String? validateConfirmPasswordField({
    String? value,
    required String password,
    required String confirmPassword,
  }) {
    if (value!.isEmpty || password != confirmPassword) {
      return "Passwords don't match";
    }

    return null;
  }
}
