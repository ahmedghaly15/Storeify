import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_error_handler.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/features/categories/data/datasources/categories_local_datasource.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_params.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';

abstract class CategoriesRepo {
  Future<ApiResult<FetchCategoriesResponse>> fetchCategories([
    CancelToken? cancelToken,
  ]);
  Future<ApiResult<FetchSubCategoryResponse>> fetchSubCategory(
    FetchSubCategoryParams params, [
    CancelToken? cancelToken,
  ]);
}

class CategoriesRepoImpl implements CategoriesRepo {
  final ApiService _apiService;

  const CategoriesRepoImpl(this._apiService);

  @override
  Future<ApiResult<FetchCategoriesResponse>> fetchCategories([
    CancelToken? cancelToken,
  ]) async {
    final cachedCategories =
        await CategoriesLocalDatasource.getCachedCategories();
    if (cachedCategories == null) {
      debugPrint('********** CACHED CATEGORIES NOT FOUND **********');
      try {
        final categories = await _apiService.fetchCategories(cancelToken);
        await CategoriesLocalDatasource.cacheCategories(categories);
        return ApiResult.success(categories);
      } catch (error) {
        debugPrint(
            '********** ERROR WHILE FETCHING CATEGORIES: $error **********');
        return ApiResult.error(ApiErrorHandler.handle(error));
      }
    } else {
      debugPrint('********** GOT CACHED CATEGORIES **********');
      return ApiResult.success(cachedCategories);
    }
  }

  @override
  Future<ApiResult<FetchSubCategoryResponse>> fetchSubCategory(
    FetchSubCategoryParams params, [
    CancelToken? cancelToken,
  ]) async {
    final cachedSubCategory =
        await CategoriesLocalDatasource.getCachedSubCategory();
    if (cachedSubCategory == null) {
      debugPrint('********** CACHED SUB CATEGORY NOT FOUND **********');
      try {
        final subCategory = await _apiService.fetchSubCategory(
          params.categoryId,
          params.subCategoryId,
          cancelToken,
        );
        await CategoriesLocalDatasource.cacheSubCategory(subCategory);
        return ApiResult.success(subCategory);
      } catch (error) {
        debugPrint(
            '********** ERROR WHILE FETCHING SUB CATEGORY: $error **********');
        return ApiResult.error(ApiErrorHandler.handle(error));
      }
    } else {
      debugPrint('********** GOT CACHED SUB CATEGORY **********');
      return ApiResult.success(cachedSubCategory);
    }
  }
}
