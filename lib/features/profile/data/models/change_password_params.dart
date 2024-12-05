import 'package:json_annotation/json_annotation.dart';

part 'change_password_params.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ChangePasswordParams {
  final String currentPassword, password, passwordConfirmation;

  ChangePasswordParams({
    required this.currentPassword,
    required this.password,
    required this.passwordConfirmation,
  });

  factory ChangePasswordParams.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordParamsFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordParamsToJson(this);
}
