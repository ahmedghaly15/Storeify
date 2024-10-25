import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/retrofit.dart' as retrofit;
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/features/auth/data/models/forgot_password_params.dart';

part 'forgot_password_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ForgotPasswordApiService {
  factory ForgotPasswordApiService(Dio dio, {String baseUrl}) =
      _ForgotPasswordApiService;

  @POST(EndPoints.forgotPassword)
  @retrofit.Headers({'Accept-Language': 'en'})
  Future<void> forgotPassword(
    @Body() ForgotPasswordParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
