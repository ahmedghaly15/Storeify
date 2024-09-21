import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/features/auth/data/models/reset_password_params.dart';
import 'package:store_ify/features/auth/data/models/validate_otp_params.dart';

abstract class AuthRepo {
  Future<ApiResult<void>> validateOtp(
    ValidateOtpParams params, [
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<void>> resetPassword(
    ResetPasswordParams params, [
    CancelToken? cancelToken,
  ]);
}
