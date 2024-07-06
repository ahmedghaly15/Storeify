// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestResponse _$LoginRequestResponseFromJson(
        Map<String, dynamic> json) =>
    LoginRequestResponse(
      code: json['code'] as String,
      token: json['token'] as String,
      data: LoginResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginRequestResponseToJson(
        LoginRequestResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'token': instance.token,
      'data': instance.data,
    };

LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) =>
    LoginResponseData(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$LoginResponseDataToJson(LoginResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
    };
