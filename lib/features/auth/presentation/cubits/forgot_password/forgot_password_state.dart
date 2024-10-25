import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

@freezed
class ForgotPasswordState<T> with _$ForgotPasswordState<T> {
  const factory ForgotPasswordState.initial() = _Initial;
  const factory ForgotPasswordState.forgotPasswordLoading() =
      ForgotPasswordLoading;
  const factory ForgotPasswordState.forgotPasswordSuccess() =
      ForgotPasswordSuccess;
  const factory ForgotPasswordState.forgotPasswordError(String error) =
      ForgotPasswordError<T>;
}
