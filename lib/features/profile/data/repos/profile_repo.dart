import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';

abstract class ProfileRepo {
  Future<ApiResult<void>> logout();
}

class ProfileRepoImpl implements ProfileRepo {
  final ApiService _apiService;

  const ProfileRepoImpl(this._apiService);

  @override
  Future<ApiResult<void>> logout() {
    return executeAndHandleErrors(() async => await _apiService.logout());
  }
}
