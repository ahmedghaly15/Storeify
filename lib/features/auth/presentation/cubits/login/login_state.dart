import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/models/storeify_user.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess(StoreifyUser data) = LoginSuccess<T>;
  const factory LoginState.loginError(String error) = LoginError<T>;
  const factory LoginState.invertPasswordVisibility(bool isPasswordVisible) =
      InvertPasswordVisibility<T>;
}
