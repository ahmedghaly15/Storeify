import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/features/home/data/models/category.dart';
import 'package:store_ify/features/home/data/models/product.dart';
import 'package:store_ify/features/home/data/models/top_store.dart';

part 'fetch_home_response.g.dart';

@JsonSerializable()
class FetchHomeResponse {
  final List<Product> bestSelling;
  final List<Category> categories;
  final List<TopStore> topStores;

  const FetchHomeResponse({
    required this.bestSelling,
    required this.categories,
    required this.topStores,
  });

  factory FetchHomeResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchHomeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchHomeResponseToJson(this);
}
