import 'package:json_annotation/json_annotation.dart';

part 'register_params.g.dart';

@JsonSerializable()
class RegisterParams {
  final String username, email, password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  const RegisterParams({
    required this.username,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
  });

  factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterParamsToJson(this);
}
