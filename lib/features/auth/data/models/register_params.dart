class RegisterParams {
  final String username;
  final String email;
  final String password;
  final String passwordConfirmation;

  RegisterParams(
      {required this.username,
      required this.email,
      required this.password,
      required this.passwordConfirmation});
}
