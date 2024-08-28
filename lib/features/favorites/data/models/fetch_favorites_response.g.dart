// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchFavoritesResponse _$FetchFavoritesResponseFromJson(
        Map<String, dynamic> json) =>
    FetchFavoritesResponse(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchFavoritesResponseToJson(
        FetchFavoritesResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
