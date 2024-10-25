import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/features/cart/data/models/cart.dart';

part 'fetch_cart_response.g.dart';

@HiveType(typeId: HiveTypeIds.fetchCartResponse)
@JsonSerializable()
class FetchCartResponse {
  @HiveField(0)
  final List<Cart> cart;
  @HiveField(1)
  final int totalItems;
  @HiveField(2)
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
