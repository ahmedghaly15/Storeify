// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchCategoriesResponse _$FetchCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    FetchCategoriesResponse(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchCategoriesResponseToJson(
        FetchCategoriesResponse instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'pagination': instance.pagination,
    };
