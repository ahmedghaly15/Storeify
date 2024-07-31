import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_params.g.dart';

@JsonSerializable()
class ForgotPasswordParams {
  final String email;

  const ForgotPasswordParams({required this.email});

  factory ForgotPasswordParams.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordParamsFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordParamsToJson(this);
}
