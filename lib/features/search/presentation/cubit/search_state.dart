import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/search/data/models/search_response.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState<T> with _$SearchState<T> {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.searchLoading() = SearchLoading;
  const factory SearchState.searchSuccess(SearchResponse searchResult) =
      SearchSuccess<T>;
  const factory SearchState.searchError(String error) = SearchError<T>;
  const factory SearchState.updateSearchText(String text) = UpdateSearchText<T>;
}
