part of 'sign_up_cubit.dart';

abstract class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object?> get props => [];
}

class SignUpInitial extends SignUpState {
  const SignUpInitial();
}

class SignUpChangePasswordVisibility extends SignUpState {
  final bool isPassword;

  const SignUpChangePasswordVisibility({required this.isPassword});

  @override
  List<Object?> get props => [isPassword];
}

class SignUpLoading extends SignUpState {
  const SignUpLoading();
}

class SignUpSuccess extends SignUpState {
  final User user;
  final String uId;

  const SignUpSuccess({required this.user, required this.uId});

  @override
  List<Object?> get props => [user, uId];
}

class SignUpError extends SignUpState {
  final String error;

  const SignUpError({required this.error});

  @override
  List<Object?> get props => [error];
}

class SignUpWithGoogleLoading extends SignUpState {
  const SignUpWithGoogleLoading();
}

class SignUpWithGoogleSuccess extends SignUpState {
  final String uId;

  const SignUpWithGoogleSuccess({required this.uId});

  @override
  List<Object?> get props => [uId];
}

class SignUpWithGoogleError extends SignUpState {
  final String error;

  const SignUpWithGoogleError({required this.error});

  @override
  List<Object?> get props => [error];
}
