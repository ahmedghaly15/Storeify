// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_to_cart_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddProductToCartParams _$AddProductToCartParamsFromJson(
        Map<String, dynamic> json) =>
    AddProductToCartParams(
      productId: (json['productId'] as num).toInt(),
      colorId: (json['color_id'] as num).toInt(),
      sizeId: (json['size_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$AddProductToCartParamsToJson(
        AddProductToCartParams instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'color_id': instance.colorId,
      'size_id': instance.sizeId,
      'quantity': instance.quantity,
    };
