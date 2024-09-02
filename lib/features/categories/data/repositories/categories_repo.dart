import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_params.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';

class CategoriesRepo {
  final ApiService _apiService;

  const CategoriesRepo(this._apiService);

  Future<ApiResult<FetchCategoriesResponse>> fetchCategories([
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<FetchCategoriesResponse>(
      () async => await _apiService.fetchCategories(cancelToken),
    );
  }

  Future<ApiResult<FetchSubCategoryResponse>> fetchSubCategory(
    FetchSubCategoryParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<FetchSubCategoryResponse>(
      () async => await _apiService.fetchSubCategory(
        params.categoryId,
        params.subCategoryId,
        cancelToken,
      ),
    );
  }
}
