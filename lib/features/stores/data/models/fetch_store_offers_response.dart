import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/core/models/product.dart';

part 'fetch_store_offers_response.g.dart';

@HiveType(typeId: HiveTypeIds.fetchStoreOffersResponse)
@JsonSerializable()
class FetchStoreOffersResponse {
  @HiveField(0)
  final List<Product> products;
  @HiveField(1)
  final Pagination pagination;

  const FetchStoreOffersResponse({
    required this.products,
    required this.pagination,
  });

  factory FetchStoreOffersResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchStoreOffersResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchStoreOffersResponseToJson(this);
}
