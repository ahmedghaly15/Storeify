import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/features/home/data/models/sub_category.dart';

part 'category.g.dart';

@HiveType(typeId: HiveTypeIds.category)
@JsonSerializable(explicitToJson: true)
class Category {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final String? img;
  @HiveField(4)
  @JsonKey(name: 'sub_categories')
  final List<SubCategory>? subCategories;
  @HiveField(5)
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
