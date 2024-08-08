// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: (json['id'] as num).toInt(),
      discount: (json['discount'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      priceAfterDiscount: json['price_after_discount'] as String,
      storeImg: json['store_img'] as String,
      productImages: (json['product_images'] as List<dynamic>)
          .map((e) => ProductImg.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorited: json['is_favorited'] as bool,
      subCategory: json['sub_category'] == null
          ? null
          : SubCategory.fromJson(json['sub_category'] as Map<String, dynamic>),
      colors: (json['colors'] as List<dynamic>?)
          ?.map((e) => ProductColor.fromJson(e as Map<String, dynamic>))
          .toList(),
      sizes: (json['sizes'] as List<dynamic>?)
          ?.map((e) => ProductSize.fromJson(e as Map<String, dynamic>))
          .toList(),
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'discount': instance.discount,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'price_after_discount': instance.priceAfterDiscount,
      'store_img': instance.storeImg,
      'product_images': instance.productImages,
      'is_favorited': instance.isFavorited,
      'sub_category': instance.subCategory,
      'colors': instance.colors,
      'sizes': instance.sizes,
      'store': instance.store,
    };

ProductImg _$ProductImgFromJson(Map<String, dynamic> json) => ProductImg(
      img: json['img'] as String,
    );

Map<String, dynamic> _$ProductImgToJson(ProductImg instance) =>
    <String, dynamic>{
      'img': instance.img,
    };

ProductColor _$ProductColorFromJson(Map<String, dynamic> json) => ProductColor(
      id: (json['id'] as num).toInt(),
      color: json['color'] as String,
    );

Map<String, dynamic> _$ProductColorToJson(ProductColor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'color': instance.color,
    };

ProductSize _$ProductSizeFromJson(Map<String, dynamic> json) => ProductSize(
      id: (json['id'] as num).toInt(),
      size: json['size'] as String,
    );

Map<String, dynamic> _$ProductSizeToJson(ProductSize instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
    };
