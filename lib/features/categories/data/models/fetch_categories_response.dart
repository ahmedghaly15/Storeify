import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/features/categories/data/models/category.dart';

part 'fetch_categories_response.g.dart';

@HiveType(typeId: HiveTypeIds.fetchCategoriesResponse)
@JsonSerializable(explicitToJson: true)
class FetchCategoriesResponse {
  @HiveField(0)
  final List<Category> categories;
  @HiveField(1)
  final Pagination pagination;

  const FetchCategoriesResponse({
    required this.categories,
    required this.pagination,
  });

  factory FetchCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchCategoriesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchCategoriesResponseToJson(this);
}
