import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';

part 'stores_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class StoresApiService {
  factory StoresApiService(Dio dio, {String baseUrl}) = _StoresApiService;

  @GET(EndPoints.fetchStores)
  Future<FetchStoresResponse> fetchStores([
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET('${EndPoints.fetchStores}/{category_id}')
  Future<FetchStoresResponse> fetchCategoryStores(
    @Path('category_id') String categoryId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET('${EndPoints.fetchStoreBranches}{store_id}')
  Future<FetchStoreBranchesResponse> fetchStoreBranches(
    @Path('store_id') int storeId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET('${EndPoints.fetchStoreCategories}{store_id}')
  Future<FetchStoreCategoriesResponse> fetchStoreCategories(
    @Path('store_id') int storeId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET('${EndPoints.fetchStoreOffers}{store_id}')
  Future<FetchStoreOffersResponse> fetchStoreOffers(
    @Path('store_id') int storeId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
