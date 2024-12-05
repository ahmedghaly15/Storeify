import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/search/data/api/search_api_service.dart';
import 'package:store_ify/features/search/data/datasource/search_local_datasource.dart';
import 'package:store_ify/features/search/data/models/fetch_search_data_response.dart';
import 'package:store_ify/features/search/data/models/search_params.dart';
import 'package:store_ify/features/search/data/models/search_response.dart';

class SearchRepo {
  const SearchRepo(this._searchApiService, this._localDatasource);

  final SearchApiService _searchApiService;
  final SearchLocalDatasource _localDatasource;

  Future<ApiResult<SearchResponse>> search(
    SearchParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<SearchResponse>(
      () async => await _searchApiService.search(
        params,
        cancelToken,
      ),
    );
  }

  Future<ApiResult<FetchSearchDataResponse>> fetchSearchData([
    CancelToken? cancelToken,
  ]) async {
    final cachedSearchData = await _localDatasource.retrieveCachedSearchData();
    if (cachedSearchData == null) {
      debugPrint('************ NO CACHED SEARCH DATA ************');
      return executeAndHandleErrors<FetchSearchDataResponse>(() async {
        final searchData = await _searchApiService.fetchSearchData(cancelToken);
        await _localDatasource.cacheSearchData(searchData);
        return searchData;
      });
    } else {
      debugPrint('************ GOT CACHED SEARCH DATA ************');
      return ApiResult.success(cachedSearchData);
    }
  }
}
