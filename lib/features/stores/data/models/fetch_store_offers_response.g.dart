// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_store_offers_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchStoreOffersResponseAdapter
    extends TypeAdapter<FetchStoreOffersResponse> {
  @override
  final int typeId = 20;

  @override
  FetchStoreOffersResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchStoreOffersResponse(
      products: (fields[0] as List).cast<Product>(),
      pagination: fields[1] as Pagination,
    );
  }

  @override
  void write(BinaryWriter writer, FetchStoreOffersResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.products)
      ..writeByte(1)
      ..write(obj.pagination);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchStoreOffersResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchStoreOffersResponse _$FetchStoreOffersResponseFromJson(
        Map<String, dynamic> json) =>
    FetchStoreOffersResponse(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchStoreOffersResponseToJson(
        FetchStoreOffersResponse instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };
