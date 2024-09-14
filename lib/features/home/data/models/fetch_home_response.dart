import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/home/data/models/product.dart';
import 'package:store_ify/features/stores/data/models/store.dart';

part 'fetch_home_response.g.dart';

@HiveType(typeId: HiveTypeIds.fetchHomeResponse)
@JsonSerializable()
class FetchHomeResponse {
  @HiveField(0)
  final List<Product> bestSelling;
  @HiveField(1)
  final List<Category> categories;
  @HiveField(2)
  final List<Store> topStores;
  @HiveField(3)
  final Pagination pagination;

  const FetchHomeResponse({
    required this.bestSelling,
    required this.categories,
    required this.topStores,
    required this.pagination,
  });

  factory FetchHomeResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchHomeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchHomeResponseToJson(this);
}
