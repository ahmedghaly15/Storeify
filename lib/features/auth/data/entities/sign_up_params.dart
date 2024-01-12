import 'package:equatable/equatable.dart';

class SignUpParams extends Equatable {
  final String userName;
  final String email;
  final String password;
  final String confirmPassword;

  const SignUpParams({
    required this.userName,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [
        userName,
        email,
        password,
        confirmPassword,
      ];
}
