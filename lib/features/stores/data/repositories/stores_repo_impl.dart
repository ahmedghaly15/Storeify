import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_error_handler.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/features/stores/data/datasources/stores_local_datasource.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';

class StoresRepoImpl implements StoresRepo {
  final ApiService _apiService;
  final StoresLocalDatasource _localDatasource;

  const StoresRepoImpl(this._apiService, this._localDatasource);

  @override
  Future<ApiResult<FetchStoresResponse>> fetchStores([
    CancelToken? cancelToken,
  ]) async {
    final FetchStoresResponse? cachedStores =
        await _localDatasource.retrieveCachedStores();
    if (cachedStores == null) {
      debugPrint('*********** NO CACHED STORES ***********');
      return await _fetchAndCacheStores(cancelToken);
    } else {
      debugPrint('*********** GOT CACHED STORES ***********');
      return ApiResult.success(cachedStores);
    }
  }

  Future<ApiResult<FetchStoresResponse>> _fetchAndCacheStores(
    CancelToken? cancelToken,
  ) async {
    try {
      final stores = await _apiService.fetchStores(cancelToken);
      await _localDatasource.cacheStores(stores);
      return ApiResult.success(stores);
    } catch (error) {
      debugPrint('****** ERROR FETCHING CACHED STORES: $error ******');
      return ApiResult.error(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<FetchStoresResponse>> fetchCategoryStores(
    String categoryId, [
    CancelToken? cancelToken,
  ]) async {
    final cachedCategoryStores =
        await _localDatasource.retrieveCachedCategoryStores();
    if (cachedCategoryStores == null) {
      debugPrint('*********** NO CACHED CATEGORY STORES ***********');
      return await _fetchAndCacheCategoryStores(categoryId, cancelToken);
    } else {
      debugPrint('*********** GOT CACHED CATEGORY STORES ***********');
      return ApiResult.success(cachedCategoryStores);
    }
  }

  Future<ApiResult<FetchStoresResponse>> _fetchAndCacheCategoryStores(
    String categoryId,
    CancelToken? cancelToken,
  ) async {
    try {
      final categoryStores = await _apiService.fetchCategoryStores(
        categoryId,
        cancelToken,
      );
      await _localDatasource.cacheCategoryStores(categoryStores);
      return ApiResult.success(categoryStores);
    } catch (error) {
      debugPrint('****** ERROR FETCHING CACHED CATEGORY STORES: $error ******');
      return ApiResult.error(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<FetchStoreBranchesResponse>> fetchStoreBranches(
    int storeId, [
    CancelToken? cancelToken,
  ]) async {
    final cachedStoreBranches =
        await _localDatasource.retrieveCachedStoreBranches();
    if (cachedStoreBranches == null) {
      debugPrint('*********** NO CACHED STORE BRANCHES ***********');
      return await _fetchAndCacheStoreBranches(storeId, cancelToken);
    } else {
      debugPrint('*********** GOT CACHED STORE BRANCHES ***********');
      return ApiResult.success(cachedStoreBranches);
    }
  }

  Future<ApiResult<FetchStoreBranchesResponse>> _fetchAndCacheStoreBranches(
    int storeId,
    CancelToken? cancelToken,
  ) async {
    try {
      final storeBranches = await _apiService.fetchStoreBranches(
        storeId,
        cancelToken,
      );
      await _localDatasource.cacheStoreBranches(storeBranches);
      return ApiResult.success(storeBranches);
    } catch (error) {
      debugPrint('****** ERROR FETCHING CACHED STORE BRANCHES: $error ******');
      return ApiResult.error(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<FetchStoreCategoriesResponse>> fetchStoreCategories(
    int storeId, [
    CancelToken? cancelToken,
  ]) async {
    final cachedStoreCategories =
        await _localDatasource.retrieveCachedStoreCategories();
    if (cachedStoreCategories == null) {
      debugPrint('*********** NO CACHED STORE CATEGORIES ***********');
      return await _fetchAndCacheStoreCategories(storeId, cancelToken);
    } else {
      debugPrint('*********** GOT CACHED STORE CATEGORIES ***********');
      return ApiResult.success(cachedStoreCategories);
    }
  }

  Future<ApiResult<FetchStoreCategoriesResponse>> _fetchAndCacheStoreCategories(
    int storeId,
    CancelToken? cancelToken,
  ) async {
    try {
      final storeCategories = await _apiService.fetchStoreCategories(
        storeId,
        cancelToken,
      );
      await _localDatasource.cacheStoreCategories(storeCategories);
      return ApiResult.success(storeCategories);
    } catch (error) {
      debugPrint(
          '****** ERROR FETCHING CACHED STORE CATEGORIES: $error ******');
      return ApiResult.error(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<FetchStoreOffersResponse>> fetchStoreOffers(
    int storeId, [
    CancelToken? cancelToken,
  ]) async {
    final cachedStoreOffers =
        await _localDatasource.retrieveCachedStoreOffers();
    if (cachedStoreOffers == null) {
      debugPrint('*********** NO CACHED STORE OFFERS ***********');
      return await _fetchAndCacheStoreOffers(storeId, cancelToken);
    } else {
      debugPrint('*********** GOT CACHED STORE OFFERS ***********');
      return ApiResult.success(cachedStoreOffers);
    }
  }

  Future<ApiResult<FetchStoreOffersResponse>> _fetchAndCacheStoreOffers(
    int storeId,
    CancelToken? cancelToken,
  ) async {
    try {
      final storeOffers = await _apiService.fetchStoreOffers(
        storeId,
        cancelToken,
      );
      await _localDatasource.cacheStoreOffers(storeOffers);
      return ApiResult.success(storeOffers);
    } catch (error) {
      debugPrint('****** ERROR FETCHING CACHED STORE OFFERS: $error ******');
      return ApiResult.error(ApiErrorHandler.handle(error));
    }
  }
}
