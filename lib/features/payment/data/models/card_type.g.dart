// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CardTypeAdapter extends TypeAdapter<CardType> {
  @override
  final int typeId = 25;

  @override
  CardType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CardType(
      image: fields[0] as String,
      nameKey: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CardType obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.image)
      ..writeByte(1)
      ..write(obj.nameKey);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardTypeImpl _$$CardTypeImplFromJson(Map<String, dynamic> json) =>
    _$CardTypeImpl(
      image: json['image'] as String,
      nameKey: json['nameKey'] as String,
    );

Map<String, dynamic> _$$CardTypeImplToJson(_$CardTypeImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'nameKey': instance.nameKey,
    };
