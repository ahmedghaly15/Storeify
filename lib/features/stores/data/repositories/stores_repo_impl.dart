import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/stores/data/api/stores_api_service.dart';
import 'package:store_ify/features/stores/data/datasources/stores_local_datasource.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';

class StoresRepoImpl implements StoresRepo {
  final StoresApiService _storesApiService;
  final StoresLocalDatasource _localDatasource;

  const StoresRepoImpl(this._storesApiService, this._localDatasource);

  @override
  Future<ApiResult<FetchStoresResponse>> fetchStores([
    CancelToken? cancelToken,
  ]) async {
    final FetchStoresResponse? cachedStores =
        await _localDatasource.retrieveCachedStores();
    if (cachedStores == null) {
      debugPrint('*********** NO CACHED STORES ***********');
      return executeAndHandleErrors<FetchStoresResponse>(
        () async {
          final stores = await _storesApiService.fetchStores(cancelToken);
          await _localDatasource.cacheStores(stores);
          return stores;
        },
      );
    } else {
      debugPrint('*********** GOT CACHED STORES ***********');
      return ApiResult.success(cachedStores);
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
      return executeAndHandleErrors<FetchStoresResponse>(() async {
        final categoryStores = await _storesApiService.fetchCategoryStores(
          categoryId,
          cancelToken,
        );
        await _localDatasource.cacheCategoryStores(categoryStores);
        return categoryStores;
      });
    } else {
      debugPrint('*********** GOT CACHED CATEGORY STORES ***********');
      return ApiResult.success(cachedCategoryStores);
    }
  }

  @override
  Future<ApiResult<FetchStoreBranchesResponse>> fetchStoreBranches(
    int storeId, [
    CancelToken? cancelToken,
  ]) async {
    final cachedStoreBranches =
        await _localDatasource.retrieveCachedStoreBranches(storeId);
    if (cachedStoreBranches == null) {
      debugPrint('*********** NO CACHED STORE BRANCHES ***********');
      return executeAndHandleErrors<FetchStoreBranchesResponse>(() async {
        final storeBranches = await _storesApiService.fetchStoreBranches(
          storeId,
          cancelToken,
        );
        await _localDatasource.cacheStoreBranches(storeBranches, storeId);
        return storeBranches;
      });
    } else {
      debugPrint('*********** GOT CACHED STORE BRANCHES ***********');
      return ApiResult.success(cachedStoreBranches);
    }
  }

  @override
  Future<ApiResult<FetchStoreCategoriesResponse>> fetchStoreCategories(
    int storeId, [
    CancelToken? cancelToken,
  ]) async {
    final cachedStoreCategories =
        await _localDatasource.retrieveCachedStoreCategories(storeId);
    if (cachedStoreCategories == null) {
      debugPrint('*********** NO CACHED STORE CATEGORIES ***********');
      return executeAndHandleErrors<FetchStoreCategoriesResponse>(() async {
        final storeCategories = await _storesApiService.fetchStoreCategories(
          storeId,
          cancelToken,
        );
        await _localDatasource.cacheStoreCategories(storeCategories, storeId);
        return storeCategories;
      });
    } else {
      debugPrint('*********** GOT CACHED STORE CATEGORIES ***********');
      return ApiResult.success(cachedStoreCategories);
    }
  }

  @override
  Future<ApiResult<FetchStoreOffersResponse>> fetchStoreOffers(
    int storeId, [
    CancelToken? cancelToken,
  ]) async {
    final cachedStoreOffers =
        await _localDatasource.retrieveCachedStoreOffers(storeId);
    if (cachedStoreOffers == null) {
      debugPrint('*********** NO CACHED STORE OFFERS ***********');
      return executeAndHandleErrors<FetchStoreOffersResponse>(() async {
        final storeOffers = await _storesApiService.fetchStoreOffers(
          storeId,
          cancelToken,
        );
        await _localDatasource.cacheStoreOffers(storeOffers, storeId);
        return storeOffers;
      });
    } else {
      debugPrint('*********** GOT CACHED STORE OFFERS ***********');
      return ApiResult.success(cachedStoreOffers);
    }
  }
}
