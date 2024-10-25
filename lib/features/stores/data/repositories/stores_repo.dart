import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';

abstract class StoresRepo {
  Future<ApiResult<FetchStoresResponse>> fetchStores([
    CancelToken? cancelToken,
  ]);
  Future<ApiResult<FetchStoresResponse>> fetchCategoryStores(
    String categoryId, [
    CancelToken? cancelToken,
  ]);
  Future<ApiResult<FetchStoreBranchesResponse>> fetchStoreBranches(
    int storeId, [
    CancelToken? cancelToken,
  ]);
  Future<ApiResult<FetchStoreCategoriesResponse>> fetchStoreCategories(
    int storeId, [
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<FetchStoreOffersResponse>> fetchStoreOffers(
    int storeId, [
    CancelToken? cancelToken,
  ]);
}
