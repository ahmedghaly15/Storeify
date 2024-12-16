import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/helpers/enums.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/favorites/data/api/favorites_api_service.dart';
import 'package:store_ify/features/favorites/data/datasources/favorites_local_datasource.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';
import 'package:store_ify/features/favorites/data/models/prefer_params.dart';

class FavoritesRepo {
  final FavoritesApiService _favoritesApiService;
  final FavoritesLocalDatasource _localDatasource;

  const FavoritesRepo(this._favoritesApiService, this._localDatasource);

  Future<ApiResult<void>> preferItem({
    required PreferParams params,
    required FavItemType itemType,
    CancelToken? cancelToken,
  }) {
    final method = itemType == FavItemType.product
        ? _favoritesApiService.preferProduct
        : _favoritesApiService.preferStore;

    return executeAndHandleErrors<void>(
      () async => await method(params, cancelToken),
    );
  }

  Future<ApiResult<void>> removeItemFromFavs({
    required int itemId,
    required FavItemType itemType,
    CancelToken? cancelToken,
  }) {
    final method = itemType == FavItemType.product
        ? _favoritesApiService.removeProductFromFavs
        : _favoritesApiService.removeStoreFromFavs;

    return executeAndHandleErrors<void>(
      () async => await method(itemId, cancelToken),
    );
  }

  Future<ApiResult<FetchFavoriteProductsResponse>> fetchFavoriteProducts([
    CancelToken? cancelToken,
  ]) async {
    final cachedFavProducts =
        await _localDatasource.retrieveCachedFavProducts();
    if (cachedFavProducts == null) {
      debugPrint('********** CACHED FAV PRODUCTS NOT FOUND **********');
      return executeAndHandleErrors<FetchFavoriteProductsResponse>(() async {
        final favProducts =
            await _favoritesApiService.fetchFavoriteProducts(cancelToken);
        await _localDatasource.cacheFetchedFavProducts(favProducts);
        return favProducts;
      });
    } else {
      debugPrint('********** GOT CACHED FAV PRODUCTS **********');
      return ApiResult.success(cachedFavProducts);
    }
  }

  Future<ApiResult<FetchFavStoresResponse>> fetchFavStores([
    CancelToken? cancelToken,
  ]) async {
    final cachedFavStores = await _localDatasource.retrieveCachedFavStores();
    if (cachedFavStores == null) {
      debugPrint('********** CACHED FAV STORES NOT FOUND **********');
      return executeAndHandleErrors<FetchFavStoresResponse>(() async {
        final favStores =
            await _favoritesApiService.fetchFavStores(cancelToken);
        await _localDatasource.cacheFetchedFavStores(favStores);
        return favStores;
      });
    } else {
      debugPrint('********** GOT CACHED FAV STORES **********');
      return ApiResult.success(cachedFavStores);
    }
  }

  Future<void> deleteCachedFavProducts() async {
    await _localDatasource.deleteCachedFavProducts();
  }

  Future<void> deleteCachedFavStores() async {
    await _localDatasource.deleteCachedFavStores();
  }
}
