import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/features/categories/data/models/category.dart';

part 'fetch_categories_response.g.dart';

@JsonSerializable()
class FetchCategoriesResponse {
  final List<Category> categories;
  final Pagination pagination;

  const FetchCategoriesResponse({
    required this.categories,
    required this.pagination,
  });

  factory FetchCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchCategoriesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchCategoriesResponseToJson(this);
}
