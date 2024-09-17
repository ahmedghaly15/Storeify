import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/core/models/product.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  final List<Product> products;
  final Pagination? pagination;

  const SearchResponse({
    required this.products,
    required this.pagination,
  });

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}
