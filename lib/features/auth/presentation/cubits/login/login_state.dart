import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/models/storeify_user.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(StoreifyUser data) = Success<T>;
  const factory LoginState.error(String error) = Error<T>;
  const factory LoginState.invertPasswordVisibility(bool isPasswordVisible) =
      InvertPasswordVisibility<T>;
}
