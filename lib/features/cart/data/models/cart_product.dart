import 'package:json_annotation/json_annotation.dart';

part 'cart_product.g.dart';

@JsonSerializable()
class CartProduct {
  final int id;
  final String name, description;
  final double price;
  final int? discount;
  @JsonKey(name: 'store_id')
  final int storeId;
  @JsonKey(name: 'sub_category_id')
  final int subCategoryId;
  @JsonKey(name: 'category_id')
  final int categoryId;
  @JsonKey(name: 'created_at')
  final String createdAt;
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
