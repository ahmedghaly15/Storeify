import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pass_state.freezed.dart';

@freezed
class ChangePassState<T> with _$ChangePassState<T> {
  const factory ChangePassState.initial() = _Initial;
  const factory ChangePassState.changePasswordLoading() = ChangePasswordLoading;
  const factory ChangePassState.changePasswordSuccess() = ChangePasswordSuccess;
  const factory ChangePassState.changePasswordError(String error) =
      ChangePasswordError<T>;
  const factory ChangePassState.toggleOldPassVisibility(
      bool oldPasswordObscured) = ToggleOldPassVisibility<T>;
  const factory ChangePassState.toggleNewPassVisibility(
      bool newPasswordObscured) = ToggleNewPassVisibility<T>;
  const factory ChangePassState.toggleConfirmNewPassVisibility(
      bool confirmNewPassObscured) = ToggleConfirmNewPassVisibility<T>;
}
