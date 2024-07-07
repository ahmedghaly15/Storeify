import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/models/storeify_user.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.success(StoreifyUser data) = Success<T>;
  const factory RegisterState.error(String error) = Error<T>;
  const factory RegisterState.invertPasswordVisibility(bool isPasswordVisible) =
      InvertPasswordVisibility<T>;
}
