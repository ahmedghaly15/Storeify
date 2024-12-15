import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'product_size.g.dart';

@HiveType(typeId: HiveTypeIds.productSize)
@JsonSerializable()
class ProductSize {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String size;

  const ProductSize({required this.id, required this.size});

  factory ProductSize.fromJson(Map<String, dynamic> json) =>
      _$ProductSizeFromJson(json);
  Map<String, dynamic> toJson() => _$ProductSizeToJson(this);
}
