import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/profile/data/api/profile_api_service.dart';

abstract class ProfileRepo {
  Future<ApiResult<void>> logout();
}

class ProfileRepoImpl implements ProfileRepo {
  final ProfileApiService _apiService;

  const ProfileRepoImpl(this._apiService);

  @override
  Future<ApiResult<void>> logout() {
    return executeAndHandleErrors(() async => await _apiService.logout());
  }
}
