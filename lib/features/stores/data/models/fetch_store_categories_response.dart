import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/categories/data/models/category.dart';

part 'fetch_store_categories_response.g.dart';

@JsonSerializable()
class FetchStoreCategoriesResponse {
  final List<Category> categories;

  const FetchStoreCategoriesResponse({required this.categories});

  factory FetchStoreCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchStoreCategoriesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchStoreCategoriesResponseToJson(this);
}
