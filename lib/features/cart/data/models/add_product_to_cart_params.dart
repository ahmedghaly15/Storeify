import 'package:json_annotation/json_annotation.dart';

part 'add_product_to_cart_params.g.dart';

@JsonSerializable()
class AddProductToCartParams {
  final int productId;
  @JsonKey(name: 'color_id')
  final int? colorId;
  @JsonKey(name: 'size_id')
  final int? sizeId;
  final int quantity;

  const AddProductToCartParams({
    required this.productId,
    required this.quantity,
    this.sizeId,
    this.colorId,
  });

  factory AddProductToCartParams.fromJson(Map<String, dynamic> json) =>
      _$AddProductToCartParamsFromJson(json);
  Map<String, dynamic> toJson() => _$AddProductToCartParamsToJson(this);
}
