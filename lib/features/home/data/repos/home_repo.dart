import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/home/data/api/home_api_service.dart';
import 'package:store_ify/features/home/data/datasources/home_local_datasource.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';

class HomeRepo {
  final HomeApiService _homeApiService;
  final HomeLocalDatasource _localDatasource;

  const HomeRepo(this._homeApiService, this._localDatasource);

  Future<ApiResult<FetchHomeResponse>> fetchHomeData() async {
    final FetchHomeResponse? cachedHomeResponse =
        await _localDatasource.retrieveCachedHomeResponse();
    if (cachedHomeResponse == null) {
      debugPrint('********** NO CACHED HOME RESPONSE **********');
      return executeAndHandleErrors<FetchHomeResponse>(
        () async {
          final homeResponse = await _homeApiService.fetchHomeData();
          await _localDatasource.cacheHomeResponse(homeResponse);
          return homeResponse;
        },
      );
    } else {
      debugPrint('********* FETCHED CACHED HOME RESPONSE *********');
      return ApiResult.success(cachedHomeResponse);
    }
  }
}
