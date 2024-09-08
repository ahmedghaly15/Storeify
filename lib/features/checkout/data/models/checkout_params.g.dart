// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckoutParams _$CheckoutParamsFromJson(Map<String, dynamic> json) =>
    CheckoutParams(
      username: json['username'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
    );

Map<String, dynamic> _$CheckoutParamsToJson(CheckoutParams instance) =>
    <String, dynamic>{
      'username': instance.username,
      'address': instance.address,
      'phone': instance.phone,
      'date': instance.date,
      'time': instance.time,
    };
