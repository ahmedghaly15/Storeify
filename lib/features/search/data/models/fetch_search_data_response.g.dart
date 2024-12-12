// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_search_data_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchSearchDataResponseAdapter
    extends TypeAdapter<FetchSearchDataResponse> {
  @override
  final int typeId = 22;

  @override
  FetchSearchDataResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchSearchDataResponse(
      topCategories: (fields[0] as List).cast<SearchDataItem>(),
      topStores: (fields[1] as List).cast<SearchDataItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, FetchSearchDataResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.topCategories)
      ..writeByte(1)
      ..write(obj.topStores);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchSearchDataResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SearchDataItemAdapter extends TypeAdapter<SearchDataItem> {
  @override
  final int typeId = 23;

  @override
  SearchDataItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchDataItem(
      id: fields[0] as int,
      name: fields[1] as String,
      img: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SearchDataItem obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.img);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchDataItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchSearchDataResponse _$FetchSearchDataResponseFromJson(
        Map<String, dynamic> json) =>
    FetchSearchDataResponse(
      topCategories: (json['topCategories'] as List<dynamic>)
          .map((e) => SearchDataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      topStores: (json['topStores'] as List<dynamic>)
          .map((e) => SearchDataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchSearchDataResponseToJson(
        FetchSearchDataResponse instance) =>
    <String, dynamic>{
      'topCategories': instance.topCategories.map((e) => e.toJson()).toList(),
      'topStores': instance.topStores.map((e) => e.toJson()).toList(),
    };

SearchDataItem _$SearchDataItemFromJson(Map<String, dynamic> json) =>
    SearchDataItem(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      img: json['img'] as String,
    );

Map<String, dynamic> _$SearchDataItemToJson(SearchDataItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
    };
