class AppRegex {
  static bool isEmailValid(String email) {
    return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
  }

  static bool passwordHasSpecialCharacter(String password) {
    return RegExp(r"[@$#!%*?&]").hasMatch(password);
  }

  static bool passwordHasCapitalCharacter(String password) {
    return RegExp(r"[A-Z]").hasMatch(password);
  }

  static bool passwordHasLowercaseCharacter(String password) {
    return RegExp(r"[a-z]").hasMatch(password);
  }

  static bool passwordHasNumber(String password) {
    return RegExp(r"\d").hasMatch(password);
  }

  static bool containsOnlyDigits(String val) {
    return RegExp(r'^[0-9]+$').hasMatch(val);
  }
}
