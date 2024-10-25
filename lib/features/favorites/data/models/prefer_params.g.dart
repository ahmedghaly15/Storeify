// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefer_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferParams _$PreferParamsFromJson(Map<String, dynamic> json) => PreferParams(
      productId: (json['product_id'] as num?)?.toInt(),
      storeId: (json['store_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PreferParamsToJson(PreferParams instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'store_id': instance.storeId,
    };
