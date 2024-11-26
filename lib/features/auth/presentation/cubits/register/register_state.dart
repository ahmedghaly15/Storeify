import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/models/storeify_user.dart';

part 'register_state.freezed.dart';

enum RegisterStateStatus {
  initial,
  registerLoading,
  registerSuccess,
  registerError,
  togglePassVisibility,
  toggleConfirmPassVisibility,
}

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState({
    required RegisterStateStatus status,
    StoreifyUser? user,
    String? error,
    @Default(true) bool isPassObscure,
    @Default(true) bool isConfirmPassObscure,
  }) = _RegisterState;

  factory RegisterState.initial() => const RegisterState(
        status: RegisterStateStatus.initial,
      );
}
