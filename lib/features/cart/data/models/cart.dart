import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/models/product_color.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/models/product_size.dart';

part 'cart.g.dart';

@JsonSerializable()
class Cart {
  final int id;
  final int quantity;
  final double price;
  final double total;
  @JsonKey(name: 'cart_id')
  final int cartId;
  final Product product;
  final ProductColor color;
  final ProductSize size;

  const Cart({
    required this.id,
    required this.quantity,
    required this.cartId,
    required this.product,
    required this.price,
    required this.total,
    required this.color,
    required this.size,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
  Map<String, dynamic> toJson() => _$CartToJson(this);
}
