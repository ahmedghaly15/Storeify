import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_type_ids.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/features/home/data/models/sub_category.dart';

part 'fetch_sub_category_response.g.dart';

@HiveType(typeId: HiveTypeIds.fetchSubCategoryResponse)
@JsonSerializable()
class FetchSubCategoryResponse {
  @HiveField(0)
  final SubCategory category;
  @HiveField(1)
  final List<Product> products;
  @HiveField(2)
  final Pagination pagination;

  const FetchSubCategoryResponse({
    required this.category,
    required this.products,
    required this.pagination,
  });

  factory FetchSubCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchSubCategoryResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchSubCategoryResponseToJson(this);
}
