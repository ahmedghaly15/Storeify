import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/core/locale/models/change_api_lang_params.dart';

part 'profile_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio, {String baseUrl}) = _ProfileApiService;

  @POST(EndPoints.changeLang)
  Future<void> changeApiLang(@Body() ChangeApiLangParams params);

  @POST(EndPoints.logout)
  Future<void> logout();
}
