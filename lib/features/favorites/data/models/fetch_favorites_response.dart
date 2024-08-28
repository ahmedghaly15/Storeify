import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/features/home/data/models/product.dart';

part 'fetch_favorites_response.g.dart';

@JsonSerializable()
class FetchFavoritesResponse {
  final List<Product> products;

  const FetchFavoritesResponse({required this.products});

  factory FetchFavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchFavoritesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchFavoritesResponseToJson(this);
}
