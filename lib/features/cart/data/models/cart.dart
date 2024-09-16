import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/core/models/color.dart';
import 'package:store_ify/core/models/size.dart';
import 'package:store_ify/features/home/data/models/product.dart';

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
  @JsonKey(name: 'cart_id')
  final int cartId;
  @HiveField(5)
  final Product product;
  @HiveField(6)
  final Color color;
  @HiveField(7)
  final Size size;

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
