import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/features/home/data/models/store.dart';
import 'package:store_ify/features/home/data/models/sub_category.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final int id, discount;
  final String name, description;
  final double price;
  @JsonKey(name: 'price_after_discount')
  final String priceAfterDiscount;
  @JsonKey(name: 'store_img')
  final String storeImg;
  @JsonKey(name: 'product_images')
  final List<ProductImg> productImages;
  @JsonKey(name: 'is_favorited')
  final bool isFavorited;
  @JsonKey(name: 'sub_category')
  final SubCategory? subCategory;
  final List<ProductColor>? colors;
  final List<ProductSize>? sizes;
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

@JsonSerializable()
class ProductImg {
  final String img;

  const ProductImg({required this.img});

  factory ProductImg.fromJson(Map<String, dynamic> json) =>
      _$ProductImgFromJson(json);
  Map<String, dynamic> toJson() => _$ProductImgToJson(this);
}

@JsonSerializable()
class ProductColor {
  final int id;
  final String color;

  const ProductColor({required this.id, required this.color});

  factory ProductColor.fromJson(Map<String, dynamic> json) =>
      _$ProductColorFromJson(json);
  Map<String, dynamic> toJson() => _$ProductColorToJson(this);
}

@JsonSerializable()
class ProductSize {
  final int id;
  final String size;

  const ProductSize({required this.id, required this.size});

  factory ProductSize.fromJson(Map<String, dynamic> json) =>
      _$ProductSizeFromJson(json);
  Map<String, dynamic> toJson() => _$ProductSizeToJson(this);
}
