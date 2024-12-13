// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_payment_method_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChoosePaymentMethodParams _$ChoosePaymentMethodParamsFromJson(
        Map<String, dynamic> json) =>
    ChoosePaymentMethodParams(
      paymentId: (json['paymentId'] as num).toInt(),
      paymentMethod: json['payment_method'] as String,
    );

Map<String, dynamic> _$ChoosePaymentMethodParamsToJson(
        ChoosePaymentMethodParams instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'payment_method': instance.paymentMethod,
    };
