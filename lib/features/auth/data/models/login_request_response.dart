import 'package:json_annotation/json_annotation.dart';

part 'login_request_response.g.dart';

@JsonSerializable()
class LoginRequestResponse {
  final String code, token;
  final LoginResponseData data;

  const LoginRequestResponse({
    required this.code,
    required this.token,
    required this.data,
  });

  factory LoginRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestResponseToJson(this);
}

@JsonSerializable()
class LoginResponseData {
  final int id;
  final String username, email;

  const LoginResponseData({
    required this.id,
    required this.username,
    required this.email,
  });

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseDataToJson(this);
}
