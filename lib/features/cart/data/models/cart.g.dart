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
      cartId: fields[4] as int,
      product: fields[5] as Product,
      price: fields[2] as double,
      total: fields[3] as double,
      color: fields[6] as Color,
      size: fields[7] as Size,
    );
  }

  @override
  void write(BinaryWriter writer, Cart obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.total)
      ..writeByte(4)
      ..write(obj.cartId)
      ..writeByte(5)
      ..write(obj.product)
      ..writeByte(6)
      ..write(obj.color)
      ..writeByte(7)
      ..write(obj.size);
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
