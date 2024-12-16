import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/features/cart/data/models/cart.dart';

part 'fetch_cart_response.g.dart';

@JsonSerializable(explicitToJson: true)
class FetchCartResponse {
  final List<Cart> cart;
  final int totalItems, delivery;
  final double totalPrice, subTotalPrice;

  const FetchCartResponse({
    required this.cart,
    required this.totalItems,
    required this.totalPrice,
    required this.subTotalPrice,
    required this.delivery,
  });

  factory FetchCartResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchCartResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchCartResponseToJson(this);
}
