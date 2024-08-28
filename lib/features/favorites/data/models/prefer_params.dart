import 'package:json_annotation/json_annotation.dart';

part 'prefer_params.g.dart';

@JsonSerializable()
class PreferParams {
  @JsonKey(name: 'product_id')
  final int? productId;
  @JsonKey(name: 'store_id')
  final int? storeId;

  const PreferParams({this.productId, this.storeId});

  factory PreferParams.fromJson(Map<String, dynamic> json) =>
      _$PreferParamsFromJson(json);
  Map<String, dynamic> toJson() => _$PreferParamsToJson(this);
}
