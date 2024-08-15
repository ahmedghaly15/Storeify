import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';

class StoresRepo {
  const StoresRepo(this._apiService);

  final ApiService _apiService;

  Future<ApiResult<FetchStoresResponse>> fetchStores([
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<FetchStoresResponse>(
      () async => await _apiService.fetchStores(cancelToken),
    );
  }
}
