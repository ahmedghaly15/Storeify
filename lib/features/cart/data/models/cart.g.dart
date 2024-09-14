// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartAdapter extends TypeAdapter<Cart> {
  @override
  final int typeId = 12;

  @override
  Cart read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cart(
      id: fields[0] as int,
      quantity: fields[1] as int,
      sizeId: fields[4] as int,
      colorId: fields[5] as int,
      cartId: fields[6] as int,
      productId: fields[7] as int,
      createdAt: fields[8] as String,
      updatedAt: fields[9] as String,
      product: fields[10] as CartProduct,
      price: fields[2] as double,
      total: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Cart obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.total)
      ..writeByte(4)
      ..write(obj.sizeId)
      ..writeByte(5)
      ..write(obj.colorId)
      ..writeByte(6)
      ..write(obj.cartId)
      ..writeByte(7)
      ..write(obj.productId)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt)
      ..writeByte(10)
      ..write(obj.product);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
