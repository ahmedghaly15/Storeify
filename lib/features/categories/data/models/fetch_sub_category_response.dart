import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/models/sub_category.dart';

part 'fetch_sub_category_response.g.dart';

@JsonSerializable(explicitToJson: true)
class FetchSubCategoryResponse {
  final SubCategory category;
  final List<Product> products;
  final Pagination pagination;

  const FetchSubCategoryResponse({
    required this.category,
    required this.products,
    required this.pagination,
  });

  factory FetchSubCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchSubCategoryResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchSubCategoryResponseToJson(this);
}
