import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'sub_category.g.dart';
part 'sub_category.freezed.dart';

@HiveType(typeId: HiveTypeIds.subCategory)
@freezed
class SubCategory with _$SubCategory {
  @JsonSerializable()
  const factory SubCategory({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}
