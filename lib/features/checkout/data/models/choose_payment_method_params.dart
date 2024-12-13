import 'package:json_annotation/json_annotation.dart';

part 'choose_payment_method_params.g.dart';

@JsonSerializable()
class ChoosePaymentMethodParams {
  final int paymentId;
  @JsonKey(name: 'payment_method')
  final String paymentMethod;

  const ChoosePaymentMethodParams({
    required this.paymentId,
    required this.paymentMethod,
  });

  factory ChoosePaymentMethodParams.fromJson(Map<String, dynamic> json) =>
      _$ChoosePaymentMethodParamsFromJson(json);

  Map<String, dynamic> toJson() => _$ChoosePaymentMethodParamsToJson(this);
}
