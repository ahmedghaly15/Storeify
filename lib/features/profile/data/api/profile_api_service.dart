import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/core/locale/models/change_api_lang_params.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/profile/data/models/change_password_params.dart';

part 'profile_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio, {String baseUrl}) = _ProfileApiService;

  @POST(EndPoints.changeLang)
  Future<void> changeApiLang(@Body() ChangeApiLangParams params);

  @POST(EndPoints.logout)
  Future<void> logout();

  @POST(EndPoints.changePassword)
  Future<void> changePassword(
    @Body() ChangePasswordParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @DELETE(EndPoints.profile)
  Future<void> deleteAccount([
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @MultiPart()
  @POST(EndPoints.updateProfile)
  Future<UserData> updateProfile({
    @Part(name: 'username') String? username,
    @Part(name: 'email') String? email,
    @Part(name: 'img') File? img,
    @CancelRequest() CancelToken? cancelToken,
  });
}
