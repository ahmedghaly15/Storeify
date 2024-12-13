import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/api/reset_password_api_service.dart';
import 'package:store_ify/features/auth/data/models/reset_password_params.dart';

class ResetPasswordRepo {
  final ResetPasswordApiService _resetPasswordApiService;

  ResetPasswordRepo(this._resetPasswordApiService);

  Future<ApiResult<void>> resetPassword(
    ResetPasswordParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _resetPasswordApiService.resetPassword(
        params,
        cancelToken,
      ),
    );
  }
}
