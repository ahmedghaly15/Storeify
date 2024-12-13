import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'size.g.dart';

@HiveType(typeId: HiveTypeIds.size)
@JsonSerializable()
class Size {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String size;

  const Size({required this.id, required this.size});

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
  Map<String, dynamic> toJson() => _$SizeToJson(this);
}
