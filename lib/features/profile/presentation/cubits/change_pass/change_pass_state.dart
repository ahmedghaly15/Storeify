import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pass_state.freezed.dart';

enum ChangePassStateStatus {
  initial,
  changePasswordLoading,
  changePasswordSuccess,
  changePasswordError,
  toggleOldPassVisibility,
  toggleNewPassVisibility,
  toggleConfirmNewPassVisibility,
}

@freezed
class ChangePassState with _$ChangePassState {
  const factory ChangePassState({
    required ChangePassStateStatus status,
    String? error,
    @Default(true) bool oldPasswordObscured,
    @Default(true) bool newPasswordObscured,
    @Default(true) bool confirmNewPassObscured,
  }) = _ChangePassState;

  factory ChangePassState.initial() => const ChangePassState(
        status: ChangePassStateStatus.initial,
      );
}
