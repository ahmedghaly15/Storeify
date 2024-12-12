// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchCartResponse _$FetchCartResponseFromJson(Map<String, dynamic> json) =>
    FetchCartResponse(
      cart: (json['cart'] as List<dynamic>)
          .map((e) => Cart.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalItems: (json['totalItems'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      subTotalPrice: (json['subTotalPrice'] as num).toDouble(),
      delivery: (json['delivery'] as num).toInt(),
    );

Map<String, dynamic> _$FetchCartResponseToJson(FetchCartResponse instance) =>
    <String, dynamic>{
      'cart': instance.cart,
      'totalItems': instance.totalItems,
      'delivery': instance.delivery,
      'totalPrice': instance.totalPrice,
      'subTotalPrice': instance.subTotalPrice,
    };
