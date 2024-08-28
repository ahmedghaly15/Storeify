// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_store_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchStoreCategoriesResponse _$FetchStoreCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    FetchStoreCategoriesResponse(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchStoreCategoriesResponseToJson(
        FetchStoreCategoriesResponse instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
