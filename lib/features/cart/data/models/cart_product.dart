import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'cart_product.g.dart';

@HiveType(typeId: HiveTypeIds.cartProduct)
@JsonSerializable()
class CartProduct {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final double price;
  @HiveField(4)
  final int? discount;
  @HiveField(5)
  @JsonKey(name: 'store_id')
  final int storeId;
  @HiveField(6)
  @JsonKey(name: 'sub_category_id')
  final int subCategoryId;
  @HiveField(7)
  @JsonKey(name: 'category_id')
  final int categoryId;
  @HiveField(8)
  @JsonKey(name: 'created_at')
  final String createdAt;
  @HiveField(9)
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  const CartProduct({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.discount,
    required this.storeId,
    required this.subCategoryId,
    required this.categoryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);
  Map<String, dynamic> toJson() => _$CartProductToJson(this);
}
