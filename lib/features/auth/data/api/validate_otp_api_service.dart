import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/retrofit.dart' as retrofit;
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/features/auth/data/models/validate_otp_params.dart';

part 'validate_otp_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ValidateOtpApiService {
  factory ValidateOtpApiService(Dio dio, {String baseUrl}) =
      _ValidateOtpApiService;

  @POST(EndPoints.validateOtp)
  @retrofit.Headers({'Accept-Language': 'en'})
  Future<void> validateOtp(
    @Body() ValidateOtpParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
