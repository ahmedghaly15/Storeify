import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/search/data/models/search_params.dart';
import 'package:store_ify/features/search/data/models/search_response.dart';

class SearchRepo {
  const SearchRepo(this._apiService);

  final ApiService _apiService;

  Future<ApiResult<SearchResponse>> search(
    SearchParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<SearchResponse>(
      () async => await _apiService.search(
        params,
        cancelToken,
      ),
    );
  }
}
