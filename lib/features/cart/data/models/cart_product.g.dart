// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartProduct _$CartProductFromJson(Map<String, dynamic> json) => CartProduct(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num?)?.toInt(),
      storeId: (json['store_id'] as num).toInt(),
      subCategoryId: (json['sub_category_id'] as num).toInt(),
      categoryId: (json['category_id'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$CartProductToJson(CartProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'discount': instance.discount,
      'store_id': instance.storeId,
      'sub_category_id': instance.subCategoryId,
      'category_id': instance.categoryId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
