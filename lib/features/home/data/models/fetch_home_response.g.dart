// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_home_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchHomeResponseAdapter extends TypeAdapter<FetchHomeResponse> {
  @override
  final int typeId = 2;

  @override
  FetchHomeResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchHomeResponse(
      bestSelling: (fields[0] as List).cast<Product>(),
      categories: (fields[1] as List).cast<Category>(),
      topStores: (fields[2] as List).cast<Store>(),
      pagination: fields[3] as Pagination,
    );
  }

  @override
  void write(BinaryWriter writer, FetchHomeResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.bestSelling)
      ..writeByte(1)
      ..write(obj.categories)
      ..writeByte(2)
      ..write(obj.topStores)
      ..writeByte(3)
      ..write(obj.pagination);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchHomeResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchHomeResponse _$FetchHomeResponseFromJson(Map<String, dynamic> json) =>
    FetchHomeResponse(
      bestSelling: (json['bestSelling'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      topStores: (json['topStores'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchHomeResponseToJson(FetchHomeResponse instance) =>
    <String, dynamic>{
      'bestSelling': instance.bestSelling.map((e) => e.toJson()).toList(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'topStores': instance.topStores.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };
