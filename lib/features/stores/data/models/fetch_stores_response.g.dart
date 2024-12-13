// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_stores_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchStoresResponseAdapter extends TypeAdapter<FetchStoresResponse> {
  @override
  final int typeId = 11;

  @override
  FetchStoresResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchStoresResponse(
      stores: (fields[0] as List).cast<Store>(),
      pagination: fields[1] as Pagination,
    );
  }

  @override
  void write(BinaryWriter writer, FetchStoresResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.stores)
      ..writeByte(1)
      ..write(obj.pagination);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchStoresResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchStoresResponse _$FetchStoresResponseFromJson(Map<String, dynamic> json) =>
    FetchStoresResponse(
      stores: (json['stores'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchStoresResponseToJson(
        FetchStoresResponse instance) =>
    <String, dynamic>{
      'stores': instance.stores,
      'pagination': instance.pagination,
    };
