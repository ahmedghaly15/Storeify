import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_model.g.dart';
part 'api_error_model.freezed.dart';

@freezed
class ApiErrorModel with _$ApiErrorModel {
  const factory ApiErrorModel({
    @JsonKey(name: 'code') String? error,
  }) = _ApiErrorModel;

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
}
