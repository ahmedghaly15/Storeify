import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/home/data/models/sub_category.dart';

part 'fetch_store_categories_response.g.dart';

@JsonSerializable()
class FetchStoreCategoriesResponse {
  final List<SubCategory> categories;

  const FetchStoreCategoriesResponse({required this.categories});

  factory FetchStoreCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchStoreCategoriesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchStoreCategoriesResponseToJson(this);
}
