// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestResponseImpl _$$LoginRequestResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginRequestResponseImpl(
      code: json['code'] as String,
      data: LoginResponseData.fromJson(json['data'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$LoginRequestResponseImplToJson(
        _$LoginRequestResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'token': instance.token,
    };

_$LoginResponseDataImpl _$$LoginResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseDataImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$LoginResponseDataImplToJson(
        _$LoginResponseDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
    };
