import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';
import 'package:store_ify/features/auth/data/models/register_params.dart';

class AuthRepo {
  final ApiService _apiService;

  const AuthRepo(this._apiService);

  Future<ApiResult<StoreifyUser>> login(LoginParams params) {
    return executeAndHandleErrors<StoreifyUser>(
      () async => await _apiService.login(params),
    );
  }

  Future<ApiResult<StoreifyUser>> register(RegisterParams params) {
    return executeAndHandleErrors<StoreifyUser>(
      () async => await _apiService.register(params),
    );
  }

  Future<ApiResult<void>> forgotPassword(String email) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.forgotPassword(email),
    );
  }
}
