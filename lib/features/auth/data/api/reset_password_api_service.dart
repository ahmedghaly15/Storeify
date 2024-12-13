import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/retrofit.dart' as retrofit;
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/features/auth/data/models/reset_password_params.dart';

part 'reset_password_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ResetPasswordApiService {
  factory ResetPasswordApiService(Dio dio, {String baseUrl}) =
      _ResetPasswordApiService;

  @POST(EndPoints.resetPassword)
  @retrofit.Headers({'Accept-Language': 'en'})
  Future<void> resetPassword(
    @Body() ResetPasswordParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
