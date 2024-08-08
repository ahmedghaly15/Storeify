import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/features/home/data/models/sub_category.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  final int id;
  final String name, description, img;
  @JsonKey(name: 'sub_categories')
  final List<SubCategory>? subCategories;

  const Category({
    required this.id,
    required this.name,
    required this.description,
    required this.img,
    this.subCategories,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
