import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/auth/data/models/forgot_password_params.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';
import 'package:store_ify/features/auth/data/models/register_params.dart';
import 'package:store_ify/features/auth/data/models/reset_password_params.dart';
import 'package:store_ify/features/auth/data/models/validate_otp_params.dart';

abstract class AuthRepo {
  Future<ApiResult<StoreifyUser>> login(
    LoginParams params, [
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<StoreifyUser>> register(
    RegisterParams params, [
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<void>> forgotPassword(
    ForgotPasswordParams params, [
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<void>> validateOtp(
    ValidateOtpParams params, [
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<void>> resetPassword(
    ResetPasswordParams params, [
    CancelToken? cancelToken,
  ]);
}
