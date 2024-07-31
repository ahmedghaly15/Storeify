// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidateOtpParams _$ValidateOtpParamsFromJson(Map<String, dynamic> json) =>
    ValidateOtpParams(
      otp: json['otp'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$ValidateOtpParamsToJson(ValidateOtpParams instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'email': instance.email,
    };
