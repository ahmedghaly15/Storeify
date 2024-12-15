// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 3;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      id: fields[0] as int,
      discount: fields[1] as int?,
      name: fields[2] as String,
      description: fields[3] as String,
      price: fields[4] as double,
      priceAfterDiscount: fields[5] as double,
      storeImg: fields[6] as String?,
      productImages: (fields[7] as List).cast<ProductImg>(),
      isFavorited: fields[8] as bool,
      subCategory: fields[9] as SubCategory?,
      colors: (fields[10] as List?)?.cast<ProductColor>(),
      sizes: (fields[11] as List?)?.cast<ProductSize>(),
      store: fields[12] as Store?,
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.discount)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.priceAfterDiscount)
      ..writeByte(6)
      ..write(obj.storeImg)
      ..writeByte(7)
      ..write(obj.productImages)
      ..writeByte(8)
      ..write(obj.isFavorited)
      ..writeByte(9)
      ..write(obj.subCategory)
      ..writeByte(10)
      ..write(obj.colors)
      ..writeByte(11)
      ..write(obj.sizes)
      ..writeByte(12)
      ..write(obj.store);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProductImgAdapter extends TypeAdapter<ProductImg> {
  @override
  final int typeId = 4;

  @override
  ProductImg read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductImg(
      img: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductImg obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.img);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductImgAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: (json['id'] as num).toInt(),
      discount: (json['discount'] as num?)?.toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      priceAfterDiscount: (json['price_after_discount'] as num).toDouble(),
      storeImg: json['store_img'] as String?,
      productImages: (json['images'] as List<dynamic>)
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
      'images': instance.productImages,
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
