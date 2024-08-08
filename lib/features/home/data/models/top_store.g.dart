// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopStore _$TopStoreFromJson(Map<String, dynamic> json) => TopStore(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      img: json['img'] as String,
      categoryId: (json['category_id'] as num).toInt(),
      totalProductsOrdered: (json['total_products_ordered'] as num).toInt(),
    );

Map<String, dynamic> _$TopStoreToJson(TopStore instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'category_id': instance.categoryId,
      'total_products_ordered': instance.totalProductsOrdered,
    };
