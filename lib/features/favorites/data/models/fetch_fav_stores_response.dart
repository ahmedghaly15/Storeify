import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/features/stores/data/models/store.dart';

part 'fetch_fav_stores_response.g.dart';

@JsonSerializable()
class FetchFavStoresResponse {
  final List<Store> stores;

  const FetchFavStoresResponse({required this.stores});

  factory FetchFavStoresResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchFavStoresResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchFavStoresResponseToJson(this);
}
