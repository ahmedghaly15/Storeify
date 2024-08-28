import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/features/home/data/models/product.dart';
import 'package:store_ify/features/home/data/models/sub_category.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  final int id;
  final String name;
  final String? description;
  final String? img;

  @JsonKey(name: 'sub_categories')
  final List<SubCategory>? subCategories;
  final List<Product>? products;

  const Category({
    required this.id,
    required this.name,
    this.description,
    this.img,
    this.subCategories,
    this.products,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
