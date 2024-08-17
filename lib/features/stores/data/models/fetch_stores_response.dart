import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/features/stores/data/models/store.dart';

part 'fetch_stores_response.g.dart';

@JsonSerializable()
class FetchStoresResponse {
  final List<Store> stores;
  final Pagination pagination;

  const FetchStoresResponse({
    required this.stores,
    required this.pagination,
  });

  factory FetchStoresResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchStoresResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchStoresResponseToJson(this);
}
