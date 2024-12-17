import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'sub_category.g.dart';

@HiveType(typeId: HiveTypeIds.subCategory)
@JsonSerializable()
class SubCategory {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  const SubCategory({required this.id, required this.name});

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$SubCategoryToJson(this);
}
