import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/api/login_api_service.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';

class LoginRepo {
  final LoginApiService _loginApiService;

  LoginRepo(this._loginApiService);

  Future<ApiResult<StoreifyUser>> login(
    LoginParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<StoreifyUser>(
      () async => await _loginApiService.login(params, cancelToken),
    );
  }
}
