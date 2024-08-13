// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchHomeResponse _$FetchHomeResponseFromJson(Map<String, dynamic> json) =>
    FetchHomeResponse(
      bestSelling: (json['bestSelling'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      topStores: (json['topStores'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchHomeResponseToJson(FetchHomeResponse instance) =>
    <String, dynamic>{
      'bestSelling': instance.bestSelling,
      'categories': instance.categories,
      'topStores': instance.topStores,
      'pagination': instance.pagination,
    };
