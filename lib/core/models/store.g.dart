// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreAdapter extends TypeAdapter<Store> {
  @override
  final int typeId = 7;

  @override
  Store read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Store(
      id: fields[0] as int,
      name: fields[1] as String,
      img: fields[2] as String,
      categories: (fields[3] as List?)?.cast<Category>(),
      totalProductsOrdered: fields[4] as int,
      isFavorited: fields[5] as bool,
      averageRating: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Store obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.img)
      ..writeByte(3)
      ..write(obj.categories)
      ..writeByte(4)
      ..write(obj.totalProductsOrdered)
      ..writeByte(5)
      ..write(obj.isFavorited)
      ..writeByte(6)
      ..write(obj.averageRating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Store _$StoreFromJson(Map<String, dynamic> json) => Store(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      img: json['img'] as String,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalProductsOrdered: (json['total_products_ordered'] as num).toInt(),
      isFavorited: json['is_favorited'] as bool,
      averageRating: json['average_rating'] as String,
    );

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'total_products_ordered': instance.totalProductsOrdered,
      'is_favorited': instance.isFavorited,
      'average_rating': instance.averageRating,
    };
