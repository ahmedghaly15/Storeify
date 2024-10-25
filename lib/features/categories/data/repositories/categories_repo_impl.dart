import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/api/api_error_handler.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/features/categories/data/api/categories_api_service.dart';
import 'package:store_ify/features/categories/data/datasources/categories_local_datasource.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_params.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';
import 'package:store_ify/features/categories/data/repositories/categories_repo.dart';

class CategoriesRepoImpl implements CategoriesRepo {
  final CategoriesApiService _categoriesApiService;
  final CategoriesLocalDatasource _localDatasource;

  const CategoriesRepoImpl(this._categoriesApiService, this._localDatasource);

  @override
  Future<ApiResult<FetchCategoriesResponse>> fetchCategories([
    CancelToken? cancelToken,
  ]) async {
    final cachedCategories = await _localDatasource.getCachedCategories();
    if (cachedCategories == null) {
      debugPrint('********** CACHED CATEGORIES NOT FOUND **********');
      return await _fetchAndCacheCategories(cancelToken);
    } else {
      debugPrint('********** GOT CACHED CATEGORIES **********');
      return ApiResult.success(cachedCategories);
    }
  }

  Future<ApiResult<FetchCategoriesResponse>> _fetchAndCacheCategories(
    CancelToken? cancelToken,
  ) async {
    try {
      final categories =
          await _categoriesApiService.fetchCategories(cancelToken);
      await _localDatasource.cacheCategories(categories);
      return ApiResult.success(categories);
    } catch (error) {
      debugPrint(
          '********** ERROR WHILE FETCHING CATEGORIES: $error **********');
      return ApiResult.error(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<FetchSubCategoryResponse>> fetchSubCategory(
    FetchSubCategoryParams params, [
    CancelToken? cancelToken,
  ]) async {
    final cachedSubCategory = await _localDatasource.getCachedSubCategory();
    if (cachedSubCategory == null) {
      debugPrint('********** CACHED SUB CATEGORY NOT FOUND **********');
      return await _fetchAndCacheSubCategory(params, cancelToken);
    } else {
      debugPrint('********** GOT CACHED SUB CATEGORY **********');
      return ApiResult.success(cachedSubCategory);
    }
  }

  Future<ApiResult<FetchSubCategoryResponse>> _fetchAndCacheSubCategory(
    FetchSubCategoryParams params,
    CancelToken? cancelToken,
  ) async {
    try {
      final subCategory = await _categoriesApiService.fetchSubCategory(
        params.categoryId,
        params.subCategoryId,
        cancelToken,
      );
      await _localDatasource.cacheSubCategory(subCategory);
      return ApiResult.success(subCategory);
    } catch (error) {
      debugPrint(
          '********** ERROR WHILE FETCHING SUB CATEGORY: $error **********');
      return ApiResult.error(ApiErrorHandler.handle(error));
    }
  }
}
