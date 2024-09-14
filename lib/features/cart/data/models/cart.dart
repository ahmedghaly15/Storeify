import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/features/cart/data/models/cart_product.dart';

part 'cart.g.dart';

@HiveType(typeId: HiveTypeIds.cart)
@JsonSerializable()
class Cart {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int quantity;
  @HiveField(2)
  final double price;
  @HiveField(3)
  final double total;
  @HiveField(4)
  @JsonKey(name: 'size_id')
  final int sizeId;
  @HiveField(5)
  @JsonKey(name: 'color_id')
  final int colorId;
  @HiveField(6)
  @JsonKey(name: 'cart_id')
  final int cartId;
  @HiveField(7)
  @JsonKey(name: 'product_id')
  final int productId;
  @HiveField(8)
  @JsonKey(name: 'created_at')
  final String createdAt;
  @HiveField(9)
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @HiveField(10)
  final CartProduct product;

  const Cart({
    required this.id,
    required this.quantity,
    required this.sizeId,
    required this.colorId,
    required this.cartId,
    required this.productId,
    required this.createdAt,
    required this.updatedAt,
    required this.product,
    required this.price,
    required this.total,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
  Map<String, dynamic> toJson() => _$CartToJson(this);
}
