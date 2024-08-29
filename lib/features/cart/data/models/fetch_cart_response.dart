import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/features/cart/data/models/cart.dart';

part 'fetch_cart_response.g.dart';

@JsonSerializable()
class FetchCartResponse {
  final List<Cart> cart;
  final int totalItems;
  final double totalPrice;

  const FetchCartResponse({
    required this.cart,
    required this.totalItems,
    required this.totalPrice,
  });

  factory FetchCartResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchCartResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchCartResponseToJson(this);
}
