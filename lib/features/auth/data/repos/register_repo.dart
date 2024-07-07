import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/models/register_params.dart';

class RegisterRepo {
  final ApiService _apiService;

  const RegisterRepo(this._apiService);

  Future<ApiResult<StoreifyUser>> register(RegisterParams params) {
    return executeAndHandleErrors<StoreifyUser>(
      () async => await _apiService.register(params),
    );
  }
}
