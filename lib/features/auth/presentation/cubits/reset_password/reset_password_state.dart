import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState<T> with _$ResetPasswordState<T> {
  const factory ResetPasswordState.initial() = _Initial;
  const factory ResetPasswordState.loading() = Loading;
  const factory ResetPasswordState.success() = Success;
  const factory ResetPasswordState.error(String error) = Error<T>;
  const factory ResetPasswordState.invertPasswordVisibility(
      bool isPasswordVisible) = InvertPasswordVisibility<T>;
}
