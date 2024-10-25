import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'color.g.dart';

@HiveType(typeId: HiveTypeIds.color)
@JsonSerializable()
class Color {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String color;

  const Color({required this.id, required this.color});

  factory Color.fromJson(Map<String, dynamic> json) => _$ColorFromJson(json);
  Map<String, dynamic> toJson() => _$ColorToJson(this);
}
