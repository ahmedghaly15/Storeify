// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayParams _$PayParamsFromJson(Map<String, dynamic> json) => PayParams(
      orderId: (json['orderId'] as num).toInt(),
      number: json['number'] as String,
      cvc: json['cvc'] as String,
      amount: json['amount'] as String,
      expMonth: json['exp_month'] as String,
      expYear: json['exp_year'] as String,
    );

Map<String, dynamic> _$PayParamsToJson(PayParams instance) => <String, dynamic>{
      'orderId': instance.orderId,
      'number': instance.number,
      'cvc': instance.cvc,
      'amount': instance.amount,
      'exp_month': instance.expMonth,
      'exp_year': instance.expYear,
    };
