import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/profile/data/api/profile_api_service.dart';
import 'package:store_ify/features/profile/data/models/change_api_lang_params.dart';
import 'package:store_ify/features/profile/data/models/change_password_params.dart';
import 'package:store_ify/features/profile/data/models/update_profile_params.dart';

class ProfileRepo {
  final ProfileApiService _profileApiService;

  ProfileRepo(this._profileApiService);

  Future<ApiResult<void>> logout() {
    return executeAndHandleErrors(
      () async => await _profileApiService.logout(),
    );
  }

  Future<ApiResult<void>> changePassword(
    ChangePasswordParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _profileApiService.changePassword(params, cancelToken),
    );
  }

  Future<ApiResult<void>> deleteAccount([
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _profileApiService.deleteAccount(cancelToken),
    );
  }

  Future<ApiResult<StoreifyUser>> updateProfile(
    UpdateProfileParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<StoreifyUser>(
      () async => await _profileApiService.updateProfile(
        username: params.username,
        email: params.email,
        img: params.img,
        cancelToken: cancelToken,
      ),
    );
  }

  Future<ApiResult<void>> changeApiLang(ChangeApiLangParams params) {
    return executeAndHandleErrors<void>(
      () async => await _profileApiService.changeApiLang(params),
    );
  }
}
