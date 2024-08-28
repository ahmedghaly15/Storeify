// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_fav_stores_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchFavStoresResponse _$FetchFavStoresResponseFromJson(
        Map<String, dynamic> json) =>
    FetchFavStoresResponse(
      stores: (json['stores'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchFavStoresResponseToJson(
        FetchFavStoresResponse instance) =>
    <String, dynamic>{
      'stores': instance.stores,
    };
