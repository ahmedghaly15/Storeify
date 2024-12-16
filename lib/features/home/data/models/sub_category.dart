import 'package:json_annotation/json_annotation.dart';

part 'sub_category.g.dart';

@JsonSerializable()
class SubCategory {
  final int id;
  final String name;

  const SubCategory({required this.id, required this.name});

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$SubCategoryToJson(this);
}
