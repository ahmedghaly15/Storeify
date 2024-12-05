import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/search/data/models/fetch_search_data_response.dart';
import 'package:store_ify/features/search/data/models/search_response.dart';

part 'search_state.freezed.dart';

enum SearchStateStatus {
  initial,
  searchLoading,
  searchSuccess,
  searchError,
  onChangeSearchText,
  fetchSearchDataLoading,
  fetchSearchDataSuccess,
  fetchSearchDataError,
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required SearchStateStatus status,
    SearchResponse? searchResult,
    FetchSearchDataResponse? searchData,
    String? error,
    @Default('') String searchText,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        status: SearchStateStatus.initial,
      );
}
