import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/features/home/data/models/product.dart';

part 'fetch_store_offers_response.g.dart';

@JsonSerializable()
class FetchStoreOffersResponse {
  final List<Product> products;
  final Pagination pagination;

  const FetchStoreOffersResponse({
    required this.products,
    required this.pagination,
  });

  factory FetchStoreOffersResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchStoreOffersResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchStoreOffersResponseToJson(this);
}
