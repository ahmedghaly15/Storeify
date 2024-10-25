import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_params.g.dart';

@JsonSerializable()
class PayParams {
  final int orderId;
  final String number, cvc, amount;
  @JsonKey(name: 'exp_month')
  final String expMonth;
  @JsonKey(name: 'exp_year')
  final String expYear;

  const PayParams({
    required this.orderId,
    required this.number,
    required this.cvc,
    required this.amount,
    required this.expMonth,
    required this.expYear,
  });

  factory PayParams.fromJson(Map<String, dynamic> json) =>
      _$PayParamsFromJson(json);
  Map<String, dynamic> toJson() => _$PayParamsToJson(this);
}
