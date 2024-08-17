// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_store_offers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchStoreOffersResponse _$FetchStoreOffersResponseFromJson(
        Map<String, dynamic> json) =>
    FetchStoreOffersResponse(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchStoreOffersResponseToJson(
        FetchStoreOffersResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
      'pagination': instance.pagination,
    };
