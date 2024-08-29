// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      id: (json['id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      sizeId: (json['size_id'] as num).toInt(),
      colorId: (json['color_id'] as num).toInt(),
      cartId: (json['cart_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      product: CartProduct.fromJson(json['product'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'price': instance.price,
      'total': instance.total,
      'size_id': instance.sizeId,
      'color_id': instance.colorId,
      'cart_id': instance.cartId,
      'product_id': instance.productId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'product': instance.product,
    };
