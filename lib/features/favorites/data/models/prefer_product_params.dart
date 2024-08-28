import 'package:json_annotation/json_annotation.dart';

part 'prefer_product_params.g.dart';

@JsonSerializable()
class PreferProductParams {
  @JsonKey(name: 'product_id')
  final int productId;

  const PreferProductParams({required this.productId});

  factory PreferProductParams.fromJson(Map<String, dynamic> json) =>
      _$PreferProductParamsFromJson(json);
  Map<String, dynamic> toJson() => _$PreferProductParamsToJson(this);
}
