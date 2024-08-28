import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/favorites/data/models/prefer_product_params.dart';

class FavoritesRepo {
  const FavoritesRepo(this._apiService);

  final ApiService _apiService;

  Future<ApiResult<void>> preferProduct(
    PreferProductParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.preferProduct(
        params,
        cancelToken,
      ),
    );
  }

  Future<ApiResult<void>> removeProductFromFavs(
    int productId, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.removeProductFromFavs(
        productId,
        cancelToken,
      ),
    );
  }
}
