import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/features/categories/data/models/category.dart';

part 'fetch_store_categories_response.g.dart';

@HiveType(typeId: HiveTypeIds.fetchStoreCategoriesResponse)
@JsonSerializable()
class FetchStoreCategoriesResponse {
  @HiveField(0)
  final List<Category> categories;

  const FetchStoreCategoriesResponse({required this.categories});

  factory FetchStoreCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchStoreCategoriesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchStoreCategoriesResponseToJson(this);
}
