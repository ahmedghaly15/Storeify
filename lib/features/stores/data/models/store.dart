import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/features/categories/data/models/category.dart';

part 'store.g.dart';

@JsonSerializable()
class Store {
  final int id;
  final String name, img;
  final List<Category>? categories;
  @JsonKey(name: 'total_products_ordered')
  final int totalProductsOrdered;

  const Store({
    required this.id,
    required this.name,
    required this.img,
    required this.categories,
    required this.totalProductsOrdered,
  });

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
  Map<String, dynamic> toJson() => _$StoreToJson(this);
}
