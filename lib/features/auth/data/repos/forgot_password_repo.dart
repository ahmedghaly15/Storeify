import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/api/forgot_password_api_service.dart';
import 'package:store_ify/features/auth/data/models/forgot_password_params.dart';

class ForgotPasswordRepo {
  final ForgotPasswordApiService _forgotPasswordApiService;

  ForgotPasswordRepo(this._forgotPasswordApiService);

  Future<ApiResult<void>> forgotPassword(
    ForgotPasswordParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async =>
          await _forgotPasswordApiService.forgotPassword(params, cancelToken),
    );
  }
}
