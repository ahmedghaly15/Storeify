import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/favorites/data/models/prefer_product_params.dart';
import 'package:store_ify/features/favorites/data/models/prefer_product_response.dart';

class FavoritesRepo {
  const FavoritesRepo(this._apiService);

  final ApiService _apiService;

  Future<ApiResult<PreferProductResponse>> preferProduct(
    PreferProductParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<PreferProductResponse>(
      () async => await _apiService.preferProduct(
        params,
        cancelToken,
      ),
    );
  }
}
