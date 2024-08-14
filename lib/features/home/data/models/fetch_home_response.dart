import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/home/data/models/product.dart';
import 'package:store_ify/features/home/data/models/store.dart';

part 'fetch_home_response.g.dart';

@JsonSerializable()
class FetchHomeResponse {
  final List<Product> bestSelling;
  final List<Category> categories;
  final List<Store> topStores;
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
