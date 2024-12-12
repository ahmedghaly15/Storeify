import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/features/search/data/models/fetch_search_data_response.dart';
import 'package:store_ify/features/search/data/models/search_params.dart';
import 'package:store_ify/features/search/data/models/search_response.dart';

part 'search_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class SearchApiService {
  factory SearchApiService(Dio dio, {String baseUrl}) = _SearchApiService;

  @POST(EndPoints.search)
  Future<SearchResponse> search(
    @Body() SearchParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET(EndPoints.searchData)
  Future<FetchSearchDataResponse> fetchSearchData([
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
