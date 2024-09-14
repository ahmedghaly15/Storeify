import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/features/home/data/models/product.dart';

part 'fetch_favorite_products_response.g.dart';

@HiveType(typeId: HiveTypeIds.fetchFavoriteProductsResponse)
@JsonSerializable()
class FetchFavoriteProductsResponse {
  @HiveField(0)
  final List<Product> products;

  const FetchFavoriteProductsResponse({required this.products});

  factory FetchFavoriteProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchFavoriteProductsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchFavoriteProductsResponseToJson(this);
}
