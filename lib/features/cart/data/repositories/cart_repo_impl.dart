import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_error_handler.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/cart/data/datasources/cart_local_datasource.dart';
import 'package:store_ify/features/cart/data/models/add_product_to_cart_params.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';
import 'package:store_ify/features/cart/data/repositories/cart_repo.dart';

class CartRepoImpl implements CartRepo {
  const CartRepoImpl(this._apiService);

  final ApiService _apiService;

  @override
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

  @override
  Future<ApiResult<FetchCartResponse>> fetchCart([
    CancelToken? cancelToken,
  ]) async {
    final FetchCartResponse? cachedCart =
        await CartLocalDatasource.retrieveCachedCart();
    if (cachedCart == null) {
      debugPrint('*********** NO CACHED CART ***********');
      try {
        final cart = await _apiService.fetchCart(cancelToken);
        await CartLocalDatasource.cacheCart(cart);
        return ApiResult.success(cart);
      } catch (error) {
        debugPrint('********* ERROR FETCHING CART: $error *********');
        return ApiResult.error(ApiErrorHandler.handle(error));
      }
    } else {
      debugPrint('*********** GOT CACHED CART ***********');
      return ApiResult.success(cachedCart);
    }
  }

  @override
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
