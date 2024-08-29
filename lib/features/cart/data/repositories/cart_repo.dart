import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/cart/data/models/add_product_to_cart_params.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';

class CartRepo {
  const CartRepo(this._apiService);

  final ApiService _apiService;

  Future<ApiResult<void>> addProductToCart(
    AddProductToCartParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.addProductToCart(
        params.productId,
        params,
        cancelToken,
      ),
    );
  }

  Future<ApiResult<FetchCartResponse>> fetchCart([
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<FetchCartResponse>(
      () async => await _apiService.fetchCart(cancelToken),
    );
  }

  Future<ApiResult<void>> removeProductFromCart(
    int productId, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.removeProductFromCart(
        productId,
        cancelToken,
      ),
    );
  }
}