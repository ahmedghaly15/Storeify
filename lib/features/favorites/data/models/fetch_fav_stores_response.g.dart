// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_fav_stores_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchFavStoresResponseAdapter
    extends TypeAdapter<FetchFavStoresResponse> {
  @override
  final int typeId = 17;

  @override
  FetchFavStoresResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchFavStoresResponse(
      stores: (fields[0] as List).cast<Store>(),
    );
  }

  @override
  void write(BinaryWriter writer, FetchFavStoresResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.stores);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchFavStoresResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchFavStoresResponse _$FetchFavStoresResponseFromJson(
        Map<String, dynamic> json) =>
    FetchFavStoresResponse(
      stores: (json['stores'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchFavStoresResponseToJson(
        FetchFavStoresResponse instance) =>
    <String, dynamic>{
      'stores': instance.stores,
    };
