import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';

class HomeRepo {
  const HomeRepo(this._apiService);

  final ApiService _apiService;

  Future<ApiResult<FetchHomeResponse>> fetchHomeData([
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<FetchHomeResponse>(
      () async => await _apiService.fetchHomeData(cancelToken),
    );
  }
}
