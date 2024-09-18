import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:store_ify/core/api/api_error_handler.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/favorites/data/datasources/favorites_local_datasource.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';
import 'package:store_ify/features/favorites/data/models/prefer_params.dart';
import 'package:store_ify/features/favorites/data/repositories/favorites_repo.dart';

class FavoritesRepoImpl implements FavoritesRepo {
  final ApiService _apiService;
  final FavoritesLocalDatasource _localDatasource;

  const FavoritesRepoImpl(this._apiService, this._localDatasource);

  Future<ApiResult<void>> _preferProduct(
    PreferParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.preferProduct(
        params,
        cancelToken,
      ),
    );
  }

  Future<ApiResult<void>> _preferStore(
    PreferParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => _apiService.preferStore(
        params,
        cancelToken,
      ),
    );
  }

  @override
  Future<ApiResult<void>> preferItem({
    required PreferParams params,
    required FavItemType itemType,
    CancelToken? cancelToken,
  }) {
    switch (itemType) {
      case FavItemType.product:
        return _preferProduct(params, cancelToken);
      case FavItemType.store:
        return _preferStore(params, cancelToken);
    }
  }

  Future<ApiResult<void>> _removeProductFromFavs(
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

  Future<ApiResult<void>> _removeStoreFromFavs(
    int storeId, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.removeStoreFromFavs(
        storeId,
        cancelToken,
      ),
    );
  }

  @override
  Future<ApiResult<void>> removeItemFromFavs({
    required int itemId,
    required FavItemType itemType,
    CancelToken? cancelToken,
  }) {
    switch (itemType) {
      case FavItemType.product:
        return _removeProductFromFavs(itemId, cancelToken);
      case FavItemType.store:
        return _removeStoreFromFavs(itemId, cancelToken);
    }
  }

  @override
  Future<ApiResult<FetchFavoriteProductsResponse>> fetchFavoriteProducts([
    CancelToken? cancelToken,
  ]) async {
    final FetchFavoriteProductsResponse? cachedFavProducts =
        await _localDatasource.retrieveCachedFavProducts();
    if (cachedFavProducts == null) {
      debugPrint('********** CACHED FAV PRODUCTS NOT FOUND **********');
      return await _fetchAndCacheFavProducts(cancelToken);
    } else {
      debugPrint('********** GOT CACHED FAV PRODUCTS **********');
      return ApiResult.success(cachedFavProducts);
    }
  }

  Future<ApiResult<FetchFavoriteProductsResponse>> _fetchAndCacheFavProducts(
    CancelToken? cancelToken,
  ) async {
    try {
      final FetchFavoriteProductsResponse favProducts =
          await _apiService.fetchFavoriteProducts(cancelToken);
      await _localDatasource.cacheFetchedFavProducts(favProducts);
      return ApiResult.success(favProducts);
    } catch (error) {
      debugPrint('********** ERROR FETCHING FAV PRODUCTS: $error **********');
      return ApiResult.error(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<FetchFavStoresResponse>> fetchFavStores([
    CancelToken? cancelToken,
  ]) async {
    final FetchFavStoresResponse? cachedFavStores =
        await _localDatasource.retrieveCachedFavStores();
    if (cachedFavStores == null) {
      debugPrint('********** CACHED FAV STORES NOT FOUND **********');
      return await _fetchAndCacheFavStores(cancelToken);
    } else {
      debugPrint('********** GOT CACHED FAV STORES **********');
      return ApiResult.success(cachedFavStores);
    }
  }

  Future<ApiResult<FetchFavStoresResponse>> _fetchAndCacheFavStores(
      CancelToken? cancelToken) async {
    try {
      final FetchFavStoresResponse favStores =
          await _apiService.fetchFavStores(cancelToken);
      await _localDatasource.cacheFetchedFavStores(favStores);
      return ApiResult.success(favStores);
    } catch (error) {
      debugPrint('********** ERROR FETCHING FAV STORES: $error **********');
      return ApiResult.error(ApiErrorHandler.handle(error));
    }
  }
}
