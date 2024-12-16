import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'product_size.freezed.dart';
part 'product_size.g.dart';

@HiveType(typeId: HiveTypeIds.productSize)
@freezed
class ProductSize with _$ProductSize {
  @JsonSerializable()
  const factory ProductSize({
    @HiveField(0) required int id,
    @HiveField(1) required String size,
  }) = _ProductSize;

  factory ProductSize.fromJson(Map<String, dynamic> json) =>
      _$ProductSizeFromJson(json);
}
