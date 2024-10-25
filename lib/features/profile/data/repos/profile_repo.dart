import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/profile/data/api/profile_api_service.dart';
import 'package:store_ify/features/profile/data/models/change_password_params.dart';

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
}
