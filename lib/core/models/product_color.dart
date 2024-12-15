import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'product_color.g.dart';

@HiveType(typeId: HiveTypeIds.productColor)
@JsonSerializable()
class ProductColor {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String color;

  const ProductColor({required this.id, required this.color});

  factory ProductColor.fromJson(Map<String, dynamic> json) =>
      _$ProductColorFromJson(json);
  Map<String, dynamic> toJson() => _$ProductColorToJson(this);
}
