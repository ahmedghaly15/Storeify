import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_params.freezed.dart';

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    required String username,
    required String email,
    required String password,
    @JsonKey(name: 'password_confirmation')
    required String passwordConfirmation,
  }) = _RegisterParams;
}
