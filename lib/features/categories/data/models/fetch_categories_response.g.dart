// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_categories_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchCategoriesResponseAdapter
    extends TypeAdapter<FetchCategoriesResponse> {
  @override
  final int typeId = 14;

  @override
  FetchCategoriesResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchCategoriesResponse(
      categories: (fields[0] as List).cast<Category>(),
      pagination: fields[1] as Pagination,
    );
  }

  @override
  void write(BinaryWriter writer, FetchCategoriesResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.categories)
      ..writeByte(1)
      ..write(obj.pagination);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchCategoriesResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchCategoriesResponse _$FetchCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    FetchCategoriesResponse(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchCategoriesResponseToJson(
        FetchCategoriesResponse instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };
