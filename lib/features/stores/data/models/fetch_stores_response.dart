import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/features/stores/data/models/store.dart';

part 'fetch_stores_response.g.dart';

@HiveType(typeId: HiveTypeIds.fetchStores)
@JsonSerializable()
class FetchStoresResponse {
  @HiveField(0)
  final List<Store> stores;
  @HiveField(1)
  final Pagination pagination;

  const FetchStoresResponse({
    required this.stores,
    required this.pagination,
  });

  factory FetchStoresResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchStoresResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchStoresResponseToJson(this);
}
