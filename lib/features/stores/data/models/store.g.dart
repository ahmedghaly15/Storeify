// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Store _$StoreFromJson(Map<String, dynamic> json) => Store(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      img: json['img'] as String,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalProductsOrdered: (json['total_products_ordered'] as num).toInt(),
    );

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'categories': instance.categories,
      'total_products_ordered': instance.totalProductsOrdered,
    };
