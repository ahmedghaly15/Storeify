// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_store_categories_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchStoreCategoriesResponseAdapter
    extends TypeAdapter<FetchStoreCategoriesResponse> {
  @override
  final int typeId = 19;

  @override
  FetchStoreCategoriesResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchStoreCategoriesResponse(
      categories: (fields[0] as List).cast<Category>(),
    );
  }

  @override
  void write(BinaryWriter writer, FetchStoreCategoriesResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.categories);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchStoreCategoriesResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchStoreCategoriesResponse _$FetchStoreCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    FetchStoreCategoriesResponse(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchStoreCategoriesResponseToJson(
        FetchStoreCategoriesResponse instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
