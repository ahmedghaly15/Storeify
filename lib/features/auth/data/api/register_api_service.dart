import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/retrofit.dart' as retrofit;
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/auth/data/models/register_params.dart';

part 'register_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class RegisterApiService {
  factory RegisterApiService(Dio dio, {String baseUrl}) = _RegisterApiService;

  @POST(EndPoints.register)
  @retrofit.Headers({'Accept-Language': 'en'})
  Future<StoreifyUser> register(
    @Body() RegisterParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
