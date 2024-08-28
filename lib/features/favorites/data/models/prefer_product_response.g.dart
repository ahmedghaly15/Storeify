// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefer_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferProductResponse _$PreferProductResponseFromJson(
        Map<String, dynamic> json) =>
    PreferProductResponse(
      id: (json['id'] as num).toInt(),
      discount: (json['discount'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      priceAfterDiscount: (json['price_after_discount'] as num).toDouble(),
      isFavorited: json['is_favorited'] as bool,
    );

Map<String, dynamic> _$PreferProductResponseToJson(
        PreferProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discount': instance.discount,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'price_after_discount': instance.priceAfterDiscount,
      'is_favorited': instance.isFavorited,
    };
