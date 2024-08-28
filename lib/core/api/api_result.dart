import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/api/api_error_model.dart';

part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.error(ApiErrorModel errorModel) = Error<T>;
}
