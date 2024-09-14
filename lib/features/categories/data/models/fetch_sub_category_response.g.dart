// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_sub_category_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FetchSubCategoryResponseAdapter
    extends TypeAdapter<FetchSubCategoryResponse> {
  @override
  final int typeId = 15;

  @override
  FetchSubCategoryResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FetchSubCategoryResponse(
      category: fields[0] as SubCategory,
      products: (fields[1] as List).cast<Product>(),
      pagination: fields[2] as Pagination,
    );
  }

  @override
  void write(BinaryWriter writer, FetchSubCategoryResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.category)
      ..writeByte(1)
      ..write(obj.products)
      ..writeByte(2)
      ..write(obj.pagination);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchSubCategoryResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchSubCategoryResponse _$FetchSubCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    FetchSubCategoryResponse(
      category: SubCategory.fromJson(json['category'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchSubCategoryResponseToJson(
        FetchSubCategoryResponse instance) =>
    <String, dynamic>{
      'category': instance.category,
      'products': instance.products,
      'pagination': instance.pagination,
    };
