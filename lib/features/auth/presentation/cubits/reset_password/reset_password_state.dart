import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';

enum ResetPassStateStatus {
  initial,
  resetPassLoading,
  resetPassSuccess,
  resetPassError,
  togglePassVisibility,
  toggleConfirmPassVisibility,
}

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required ResetPassStateStatus status,
    String? error,
    @Default(true) bool isPassObscure,
    @Default(true) bool isConfirmPassObscure,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => const ResetPasswordState(
        status: ResetPassStateStatus.initial,
      );
}
