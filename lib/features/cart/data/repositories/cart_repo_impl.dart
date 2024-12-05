import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/cart/data/api/cart_api_service.dart';
import 'package:store_ify/features/cart/data/datasources/cart_local_datasource.dart';
import 'package:store_ify/features/cart/data/models/add_product_to_cart_params.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';
import 'package:store_ify/features/cart/data/repositories/cart_repo.dart';

class CartRepoImpl implements CartRepo {
  final CartApiService _cartApiService;
  final CartLocalDatasource _localDatasource;

  const CartRepoImpl(this._cartApiService, this._localDatasource);

  @override
  Future<ApiResult<void>> addProductToCart(
    AddProductToCartParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _cartApiService.addProductToCart(
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
        await _localDatasource.retrieveCachedCart();
    if (cachedCart == null) {
      debugPrint('*********** NO CACHED CART ***********');
      return executeAndHandleErrors<FetchCartResponse>(() async {
        final cart = await _cartApiService.fetchCart(cancelToken);
        await _localDatasource.cacheCart(cart);
        return cart;
      });
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
      () async => await _cartApiService.removeProductFromCart(
        productId,
        cancelToken,
      ),
    );
  }
}
