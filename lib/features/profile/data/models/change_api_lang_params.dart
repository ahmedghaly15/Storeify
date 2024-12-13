import 'package:json_annotation/json_annotation.dart';

part 'change_api_lang_params.g.dart';

@JsonSerializable()
class ChangeApiLangParams {
  final String lang;

  const ChangeApiLangParams({required this.lang});

  factory ChangeApiLangParams.fromJson(Map<String, dynamic> json) =>
      _$ChangeApiLangParamsFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeApiLangParamsToJson(this);
}
