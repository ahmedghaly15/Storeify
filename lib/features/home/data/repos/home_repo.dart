import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_error_handler.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';
import 'package:store_ify/features/home/datasources/home_local_datasource.dart';

abstract class HomeRepo {
  Future<ApiResult<FetchHomeResponse>> fetchHomeData([
    CancelToken? cancelToken,
  ]);
}

class HomeRepoImpl implements HomeRepo {
  final ApiService _apiService;
  final HomeLocalDatasource _localDatasource;

  const HomeRepoImpl(this._apiService, this._localDatasource);

  @override
  Future<ApiResult<FetchHomeResponse>> fetchHomeData([
    CancelToken? cancelToken,
  ]) async {
    final FetchHomeResponse? cachedHomeResponse =
        await _localDatasource.retrieveCachedHomeResponse();
    if (cachedHomeResponse == null) {
      debugPrint('********* NO CACHED HOME RESPONSE *********');
      try {
        final FetchHomeResponse homeResponse =
            await _apiService.fetchHomeData(cancelToken);
        await _localDatasource.cacheHomeResponse(homeResponse);
        return ApiResult.success(homeResponse);
      } catch (error) {
        debugPrint('********* ERROR FETCHING HOME RESPONSE: $error *********');
        return ApiResult.error(ApiErrorHandler.handle(error));
      }
    } else {
      debugPrint('********* FETCHED CACHED HOME RESPONSE *********');
      return ApiResult.success(cachedHomeResponse);
    }
  }
}
