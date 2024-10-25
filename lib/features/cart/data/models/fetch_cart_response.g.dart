// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_cart_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchCartResponseAdapter extends TypeAdapter<FetchCartResponse> {
  @override
  final int typeId = 13;

  @override
  FetchCartResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchCartResponse(
      cart: (fields[0] as List).cast<Cart>(),
      totalItems: fields[1] as int,
      totalPrice: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, FetchCartResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.cart)
      ..writeByte(1)
      ..write(obj.totalItems)
      ..writeByte(2)
      ..write(obj.totalPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchCartResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
    );

Map<String, dynamic> _$FetchCartResponseToJson(FetchCartResponse instance) =>
    <String, dynamic>{
      'cart': instance.cart,
      'totalItems': instance.totalItems,
      'totalPrice': instance.totalPrice,
    };
