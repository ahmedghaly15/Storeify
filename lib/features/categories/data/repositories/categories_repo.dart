import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
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
