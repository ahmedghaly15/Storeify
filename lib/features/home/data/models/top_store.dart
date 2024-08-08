import 'package:json_annotation/json_annotation.dart';

part 'top_store.g.dart';

@JsonSerializable()
class TopStore {
  final int id;
  final String name, img;
  @JsonKey(name: 'category_id')
  final int categoryId;
  @JsonKey(name: 'total_products_ordered')
  final int totalProductsOrdered;

  const TopStore({
    required this.id,
    required this.name,
    required this.img,
    required this.categoryId,
    required this.totalProductsOrdered,
  });

  factory TopStore.fromJson(Map<String, dynamic> json) =>
      _$TopStoreFromJson(json);
  Map<String, dynamic> toJson() => _$TopStoreToJson(this);
}
