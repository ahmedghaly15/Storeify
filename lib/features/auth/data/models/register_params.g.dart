// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterParams _$RegisterParamsFromJson(Map<String, dynamic> json) =>
    RegisterParams(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$RegisterParamsToJson(RegisterParams instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
