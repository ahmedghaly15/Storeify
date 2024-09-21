import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';

part 'categories_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class CategoriesApiService {
  factory CategoriesApiService(Dio dio, {String baseUrl}) =
      _CategoriesApiService;

  @GET(EndPoints.fetchCategories)
  Future<FetchCategoriesResponse> fetchCategories([
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET('${EndPoints.fetchCategories}/{category_id}/{sub_category_id}')
  Future<FetchSubCategoryResponse> fetchSubCategory(
    @Path('category_id') int categoryId,
    @Path('sub_category_id') int subCategoryId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
