import 'package:json_annotation/json_annotation.dart';

part 'search_params.g.dart';

@JsonSerializable()
class SearchParams {
  final String search;

  const SearchParams(this.search);

  factory SearchParams.fromJson(Map<String, dynamic> json) =>
      _$SearchParamsFromJson(json);
  Map<String, dynamic> toJson() => _$SearchParamsToJson(this);
}
