import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_error_handler.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/features/home/data/api/home_api_service.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';
import 'package:store_ify/features/home/data/datasources/home_local_datasource.dart';

abstract class HomeRepo {
  Future<ApiResult<FetchHomeResponse>> fetchHomeData([
    CancelToken? cancelToken,
  ]);

  Future<void> deleteHomeCachedData();
}

class HomeRepoImpl implements HomeRepo {
  final HomeApiService _homeApiService;
  final HomeLocalDatasource _localDatasource;

  const HomeRepoImpl(this._homeApiService, this._localDatasource);

  @override
  Future<ApiResult<FetchHomeResponse>> fetchHomeData([
    CancelToken? cancelToken,
  ]) async {
    final FetchHomeResponse? cachedHomeResponse =
        await _localDatasource.retrieveCachedHomeResponse();
    if (cachedHomeResponse == null) {
      debugPrint('********* NO CACHED HOME RESPONSE *********');
      return await _fetchAndCacheHomeData(cancelToken);
    } else {
      debugPrint('********* FETCHED CACHED HOME RESPONSE *********');
      return ApiResult.success(cachedHomeResponse);
    }
  }

  Future<ApiResult<FetchHomeResponse>> _fetchAndCacheHomeData(
    CancelToken? cancelToken,
  ) async {
    try {
      final FetchHomeResponse homeResponse =
          await _homeApiService.fetchHomeData(cancelToken);
      await _localDatasource.cacheHomeResponse(homeResponse);
      return ApiResult.success(homeResponse);
    } catch (error) {
      debugPrint('********* ERROR FETCHING HOME RESPONSE: $error *********');
      return ApiResult.error(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<void> deleteHomeCachedData() async {
    await _localDatasource.deleteHomeCachedResponse();
  }
}
