import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_error_handler.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
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
        await _localDatasource.retrieveFetchedStores();
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
      await _localDatasource.cacheFetchedStores(stores);
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
  ]) {
    return executeAndHandleErrors<FetchStoresResponse>(
      () async => await _apiService.fetchCategoryStores(
        categoryId,
        cancelToken,
      ),
    );
  }

  @override
  Future<ApiResult<FetchStoreBranchesResponse>> fetchStoreBranches(
    int storeId, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<FetchStoreBranchesResponse>(
      () async => await _apiService.fetchStoreBranches(
        storeId,
        cancelToken,
      ),
    );
  }

  @override
  Future<ApiResult<FetchStoreCategoriesResponse>> fetchStoreCategories(
    int storeId, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<FetchStoreCategoriesResponse>(
      () async => await _apiService.fetchStoreCategories(
        storeId,
        cancelToken,
      ),
    );
  }

  @override
  Future<ApiResult<FetchStoreOffersResponse>> fetchStoreOffers(
    int storeId, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<FetchStoreOffersResponse>(
      () async => await _apiService.fetchStoreOffers(
        storeId,
        cancelToken,
      ),
    );
  }
}
