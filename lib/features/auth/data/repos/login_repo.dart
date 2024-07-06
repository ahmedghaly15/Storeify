import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';
import 'package:store_ify/features/auth/data/models/login_request_response.dart';

class LoginRepo {
  final ApiService _apiService;

  const LoginRepo(this._apiService);

  Future<ApiResult<LoginRequestResponse>> login(LoginParams params) {
    return executeAndHandleErrors<LoginRequestResponse>(
      () async => await _apiService.login(params),
    );
  }
}
