import 'package:json_annotation/json_annotation.dart';

part 'fetch_city_data.g.dart';

@JsonSerializable()
class FetchCityData {
  @JsonKey(name: 'display_name')
  final String displayName;

  FetchCityData({required this.displayName});

  factory FetchCityData.fromJson(Map<String, dynamic> json) =>
      _$FetchCityDataFromJson(json);
  Map<String, dynamic> toJson() => _$FetchCityDataToJson(this);
}
