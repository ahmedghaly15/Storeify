import 'package:equatable/equatable.dart';

class VerificationParams extends Equatable {
  final String email;
  final String forgetCode;

  const VerificationParams({required this.email, required this.forgetCode});

  @override
  List<Object?> get props => [email, forgetCode];
}
