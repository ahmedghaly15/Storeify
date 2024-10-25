import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';

part 'pagination.g.dart';

@HiveType(typeId: HiveTypeIds.pagination)
@JsonSerializable()
class Pagination {
  @HiveField(0)
  final int total;
  @HiveField(1)
  @JsonKey(name: 'per_page')
  final int perPage;
  @HiveField(2)
  @JsonKey(name: 'current_page')
  final int currentPage;
  @HiveField(3)
  @JsonKey(name: 'last_page')
  final int lastPage;
  @HiveField(4)
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @HiveField(5)
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;

  const Pagination({
    required this.total,
    required this.perPage,
    required this.currentPage,
    required this.lastPage,
    this.nextPageUrl,
    this.prevPageUrl,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
