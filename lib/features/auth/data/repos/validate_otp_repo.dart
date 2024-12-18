import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/api/validate_otp_api_service.dart';
import 'package:store_ify/features/auth/data/models/validate_otp_params.dart';

class ValidateOtpRepo {
  final ValidateOtpApiService _validateOtpApiService;

  ValidateOtpRepo(this._validateOtpApiService);

  Future<ApiResult<void>> validateOtp(
    ValidateOtpParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _validateOtpApiService.validateOtp(params, cancelToken),
    );
  }
}
