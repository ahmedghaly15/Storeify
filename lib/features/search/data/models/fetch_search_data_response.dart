import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'fetch_search_data_response.g.dart';

@HiveType(typeId: HiveTypeIds.searchData)
@JsonSerializable(explicitToJson: true)
class FetchSearchDataResponse {
  @HiveField(0)
  final List<SearchDataItem> topCategories;

  @HiveField(1)
  final List<SearchDataItem> topStores;

  FetchSearchDataResponse({
    required this.topCategories,
    required this.topStores,
  });

  factory FetchSearchDataResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchSearchDataResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchSearchDataResponseToJson(this);
}

@JsonSerializable()
class SearchDataItem {
  final int id;
  final String name, img;

  SearchDataItem({
    required this.id,
    required this.name,
    required this.img,
  });

  factory SearchDataItem.fromJson(Map<String, dynamic> json) =>
      _$SearchDataItemFromJson(json);
  Map<String, dynamic> toJson() => _$SearchDataItemToJson(this);
}
