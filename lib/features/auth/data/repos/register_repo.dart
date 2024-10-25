import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/api/register_api_service.dart';
import 'package:store_ify/features/auth/data/models/register_params.dart';

class RegisterRepo {
  final RegisterApiService _registerApiService;

  RegisterRepo(this._registerApiService);

  Future<ApiResult<StoreifyUser>> register(
    RegisterParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<StoreifyUser>(
      () async => await _registerApiService.register(params, cancelToken),
    );
  }
}
