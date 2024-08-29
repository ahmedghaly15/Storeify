import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/features/cart/data/models/cart_product.dart';

part 'cart.g.dart';

@JsonSerializable()
class Cart {
  final int id, quantity;
  final double price, total;
  @JsonKey(name: 'size_id')
  final int sizeId;
  @JsonKey(name: 'color_id')
  final int colorId;
  @JsonKey(name: 'cart_id')
  final int cartId;
  @JsonKey(name: 'product_id')
  final int productId;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
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
