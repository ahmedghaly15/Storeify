import 'package:json_annotation/json_annotation.dart';

part 'prefer_product_response.g.dart';

@JsonSerializable()
class PreferProductResponse {
  final int id, discount;
  final String name, description;
  final double price;
  @JsonKey(name: 'price_after_discount')
  final double priceAfterDiscount;
  @JsonKey(name: 'is_favorited')
  final bool isFavorited;

  const PreferProductResponse({
    required this.id,
    required this.discount,
    required this.name,
    required this.description,
    required this.price,
    required this.priceAfterDiscount,
    required this.isFavorited,
  });

  factory PreferProductResponse.fromJson(Map<String, dynamic> json) =>
      _$PreferProductResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PreferProductResponseToJson(this);
}
