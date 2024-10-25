import 'package:json_annotation/json_annotation.dart';

part 'checkout_params.g.dart';

@JsonSerializable()
class CheckoutParams {
  final String username, address, phone, date, time;

  const CheckoutParams({
    required this.username,
    required this.address,
    required this.phone,
    required this.date,
    required this.time,
  });

  factory CheckoutParams.fromJson(Map<String, dynamic> json) =>
      _$CheckoutParamsFromJson(json);

  Map<String, dynamic> toJson() => _$CheckoutParamsToJson(this);
}
