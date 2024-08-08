import 'package:json_annotation/json_annotation.dart';

part 'reset_password_params.g.dart';

@JsonSerializable()
class ResetPasswordParams {
  final String email, password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  const ResetPasswordParams({
    required this.email,
    required this.password,
    required this.passwordConfirmation,
  });

  factory ResetPasswordParams.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordParamsFromJson(json);
  Map<String, dynamic> toJson() => _$ResetPasswordParamsToJson(this);
}
