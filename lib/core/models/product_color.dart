import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'product_color.freezed.dart';
part 'product_color.g.dart';

@HiveType(typeId: HiveTypeIds.productColor)
@freezed
class ProductColor with _$ProductColor {
  @JsonSerializable()
  const factory ProductColor({
    @HiveField(0) required int id,
    @HiveField(1) required String color,
  }) = _ProductColor;

  factory ProductColor.fromJson(Map<String, dynamic> json) =>
      _$ProductColorFromJson(json);
}
