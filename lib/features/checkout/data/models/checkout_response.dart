import 'package:json_annotation/json_annotation.dart';

part 'checkout_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CheckoutResponse {
  final Order order;

  const CheckoutResponse({required this.order});

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CheckoutResponseToJson(this);
}

@JsonSerializable()
class Order {
  final int id;
  @JsonKey(name: 'user_id')
  final int userId;
  final double total;
  final String status;
  @JsonKey(name: 'delivery_date')
  final String deliveryDate;
  @JsonKey(name: 'delivery_time')
  final String deliveryTime;

  const Order({
    required this.id,
    required this.userId,
    required this.total,
    required this.status,
    required this.deliveryDate,
    required this.deliveryTime,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
