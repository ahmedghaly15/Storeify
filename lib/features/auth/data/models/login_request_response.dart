import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_response.freezed.dart';
part 'login_request_response.g.dart';

@freezed
class LoginRequestResponse with _$LoginRequestResponse {
  const factory LoginRequestResponse({
    required String code,
    required LoginResponseData data,
    required String token,
  }) = _LoginRequestResponse;

  factory LoginRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestResponseFromJson(json);
}

@freezed
class LoginResponseData with _$LoginResponseData {
  const factory LoginResponseData({
    required int id,
    required String username,
    required String email,
  }) = _LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
}
