import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_ify/core/api/end_points.dart';
import 'package:retrofit/retrofit.dart' as retrofit;
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';

part 'login_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class LoginApiService {
  factory LoginApiService(Dio dio, {String baseUrl}) = _LoginApiService;

  @POST(EndPoints.login)
  @retrofit.Headers({'Accept-Language': 'en'})
  Future<StoreifyUser> login(
    @Body() LoginParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
