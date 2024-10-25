// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SizeAdapter extends TypeAdapter<Size> {
  @override
  final int typeId = 6;

  @override
  Size read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Size(
      id: fields[0] as int,
      size: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Size obj) {
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
      other is SizeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Size _$SizeFromJson(Map<String, dynamic> json) => Size(
      id: (json['id'] as num).toInt(),
      size: json['size'] as String,
    );

Map<String, dynamic> _$SizeToJson(Size instance) => <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
    };
