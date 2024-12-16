import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/core/models/product_color.dart';
import 'package:store_ify/core/models/product_size.dart';
import 'package:store_ify/features/home/data/models/sub_category.dart';
import 'package:store_ify/features/stores/data/models/store.dart';

part 'product.g.dart';

@HiveType(typeId: HiveTypeIds.product)
@JsonSerializable(explicitToJson: true)
class Product {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int? discount;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String description;
  @HiveField(4)
  final double price;
  @HiveField(5)
  @JsonKey(name: 'price_after_discount')
  final double priceAfterDiscount;
  @HiveField(6)
  @JsonKey(name: 'store_img')
  final String? storeImg;
  @HiveField(7)
  @JsonKey(name: 'images')
  final List<ProductImg> productImages;
  @HiveField(8)
  @JsonKey(name: 'is_favorited')
  final bool isFavorited;
  @HiveField(9)
  @JsonKey(name: 'sub_category')
  final SubCategory? subCategory;
  @HiveField(10)
  final List<ProductColor>? colors;
  @HiveField(11)
  final List<ProductSize>? sizes;
  @HiveField(12)
  final Store? store;

  const Product({
    required this.id,
    required this.discount,
    required this.name,
    required this.description,
    required this.price,
    required this.priceAfterDiscount,
    required this.storeImg,
    required this.productImages,
    required this.isFavorited,
    this.subCategory,
    this.colors,
    this.sizes,
    this.store,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@HiveType(typeId: HiveTypeIds.productImg)
@JsonSerializable()
class ProductImg {
  @HiveField(0)
  final String img;

  const ProductImg({required this.img});

  factory ProductImg.fromJson(Map<String, dynamic> json) =>
      _$ProductImgFromJson(json);
  Map<String, dynamic> toJson() => _$ProductImgToJson(this);
}
