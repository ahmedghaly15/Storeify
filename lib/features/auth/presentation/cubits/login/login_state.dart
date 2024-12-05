import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/models/storeify_user.dart';

part 'login_state.freezed.dart';

enum LoginStateStatus {
  initial,
  loginLoading,
  loginSuccess,
  loginError,
  togglePassVisibility,
}

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState({
    required LoginStateStatus status,
    StoreifyUser? user,
    String? error,
    @Default(true) bool isPasswordObscure,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        status: LoginStateStatus.initial,
      );
}
