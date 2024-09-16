import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';

class StoresRepoImpl implements StoresRepo {
  const StoresRepoImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<ApiResult<FetchStoresResponse>> fetchStores([
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<FetchStoresResponse>(
      () async => await _apiService.fetchStores(cancelToken),
    );
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
