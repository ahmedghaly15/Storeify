// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_favorite_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchFavoriteProductsResponse _$FetchFavoriteProductsResponseFromJson(
        Map<String, dynamic> json) =>
    FetchFavoriteProductsResponse(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchFavoriteProductsResponseToJson(
        FetchFavoriteProductsResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
