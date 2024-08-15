// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_stores_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchStoresResponse _$FetchStoresResponseFromJson(Map<String, dynamic> json) =>
    FetchStoresResponse(
      stores: (json['stores'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchStoresResponseToJson(
        FetchStoresResponse instance) =>
    <String, dynamic>{
      'stores': instance.stores,
      'pagination': instance.pagination,
    };
