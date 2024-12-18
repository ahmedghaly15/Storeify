import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/features/categories/data/models/category.dart';

part 'store.g.dart';

@HiveType(typeId: HiveTypeIds.store)
@JsonSerializable(explicitToJson: true)
class Store {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String img;
  @HiveField(3)
  final List<Category>? categories;
  @HiveField(4)
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
