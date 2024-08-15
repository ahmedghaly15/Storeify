// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_sub_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchSubCategoryResponse _$FetchSubCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    FetchSubCategoryResponse(
      category: SubCategory.fromJson(json['category'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchSubCategoryResponseToJson(
        FetchSubCategoryResponse instance) =>
    <String, dynamic>{
      'category': instance.category,
      'products': instance.products,
      'pagination': instance.pagination,
    };
