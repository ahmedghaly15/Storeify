// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      id: (json['id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      cartId: (json['cart_id'] as num).toInt(),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      color: Color.fromJson(json['color'] as Map<String, dynamic>),
      size: Size.fromJson(json['size'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'price': instance.price,
      'total': instance.total,
      'cart_id': instance.cartId,
      'product': instance.product,
      'color': instance.color,
      'size': instance.size,
    };
