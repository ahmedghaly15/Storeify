part of 'verification_cubit.dart';

abstract class VerificationState extends Equatable {
  const VerificationState();

  @override
  List<Object?> get props => [];
}

class VerificationInitial extends VerificationState {
  const VerificationInitial();
}

class VerificationLoading extends VerificationState {
  const VerificationLoading();
}

class VerificationSuccess extends VerificationState {
  final String message;

  const VerificationSuccess({required this.message});

  @override
  List<Object?> get props => [message];
}

class VerificationError extends VerificationState {
  final String errorMessage;

  const VerificationError({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
