// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_payment_method_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChoosePaymentMethodParams _$ChoosePaymentMethodParamsFromJson(
        Map<String, dynamic> json) =>
    ChoosePaymentMethodParams(
      paymentId: (json['paymentId'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
    );

Map<String, dynamic> _$ChoosePaymentMethodParamsToJson(
        ChoosePaymentMethodParams instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'paymentMethod': instance.paymentMethod,
    };
