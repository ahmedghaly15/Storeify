import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/auth/data/models/forgot_password_params.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';
import 'package:store_ify/features/auth/data/models/register_params.dart';
import 'package:store_ify/features/auth/data/models/reset_password_params.dart';
import 'package:store_ify/features/auth/data/models/validate_otp_params.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(EndPoints.login)
  Future<StoreifyUser> login(
    @Body() LoginParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.register)
  Future<StoreifyUser> register(
    @Body() RegisterParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.forgotPassword)
  Future<void> forgotPassword(
    @Body() ForgotPasswordParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.validateOtp)
  Future<void> validateOtp(
    @Body() ValidateOtpParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.resetPassword)
  Future<void> resetPassword(
    @Body() ResetPasswordParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET(EndPoints.fetchHomeData)
  Future<FetchHomeResponse> fetchHomeData([
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
