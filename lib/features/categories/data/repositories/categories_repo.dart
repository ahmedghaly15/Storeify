import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/categories/data/api/categories_api_service.dart';
import 'package:store_ify/features/categories/data/datasources/categories_local_datasource.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_params.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';

class CategoriesRepo {
  final CategoriesApiService _categoriesApiService;
  final CategoriesLocalDatasource _localDatasource;

  CategoriesRepo(this._categoriesApiService, this._localDatasource);

  Future<ApiResult<FetchCategoriesResponse>> fetchCategories([
    CancelToken? cancelToken,
  ]) async {
    final cachedCategories = await _localDatasource.getCachedCategories();
    if (cachedCategories == null) {
      debugPrint('********** CACHED CATEGORIES NOT FOUND **********');
      return executeAndHandleErrors<FetchCategoriesResponse>(() async {
        final categories =
            await _categoriesApiService.fetchCategories(cancelToken);
        await _localDatasource.cacheCategories(categories);
        return categories;
      });
    } else {
      debugPrint('********** GOT CACHED CATEGORIES **********');
      return ApiResult.success(cachedCategories);
    }
  }

  Future<ApiResult<FetchSubCategoryResponse>> fetchSubCategory(
    FetchSubCategoryParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<FetchSubCategoryResponse>(
      () async => await _categoriesApiService.fetchSubCategory(
        params.categoryId,
        params.subCategoryId,
        cancelToken,
      ),
    );
  }
}
