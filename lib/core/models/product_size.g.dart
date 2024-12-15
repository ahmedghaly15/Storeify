// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_size.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductSizeAdapter extends TypeAdapter<ProductSize> {
  @override
  final int typeId = 6;

  @override
  ProductSize read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductSize(
      id: fields[0] as int,
      size: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductSize obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.size);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductSizeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductSize _$ProductSizeFromJson(Map<String, dynamic> json) => ProductSize(
      id: (json['id'] as num).toInt(),
      size: json['size'] as String,
    );

Map<String, dynamic> _$ProductSizeToJson(ProductSize instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
    };
