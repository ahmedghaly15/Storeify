// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_favorite_products_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchFavoriteProductsResponseAdapter
    extends TypeAdapter<FetchFavoriteProductsResponse> {
  @override
  final int typeId = 16;

  @override
  FetchFavoriteProductsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchFavoriteProductsResponse(
      products: (fields[0] as List).cast<Product>(),
    );
  }

  @override
  void write(BinaryWriter writer, FetchFavoriteProductsResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.products);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchFavoriteProductsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchFavoriteProductsResponse _$FetchFavoriteProductsResponseFromJson(
        Map<String, dynamic> json) =>
    FetchFavoriteProductsResponse(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchFavoriteProductsResponseToJson(
        FetchFavoriteProductsResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
