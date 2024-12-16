// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_color.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductColorAdapter extends TypeAdapter<ProductColor> {
  @override
  final int typeId = 5;

  @override
  ProductColor read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductColor(
      id: fields[0] as int,
      color: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductColor obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductColorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductColorImpl _$$ProductColorImplFromJson(Map<String, dynamic> json) =>
    _$ProductColorImpl(
      id: (json['id'] as num).toInt(),
      color: json['color'] as String,
    );

Map<String, dynamic> _$$ProductColorImplToJson(_$ProductColorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'color': instance.color,
    };
