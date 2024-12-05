import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/debouncer.dart';
import 'package:store_ify/features/search/data/models/search_params.dart';
import 'package:store_ify/features/search/data/repositories/search_repo.dart';
import 'package:store_ify/features/search/presentation/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _searchRepo;

  SearchCubit(
    this._searchRepo,
  ) : super(SearchState.initial()) {
    _debouncer = Debouncer(duration: const Duration(milliseconds: 500));
  }

  late final Debouncer _debouncer;
  final CancelToken _cancelToken = CancelToken();

  void search() async {
    emit(state.copyWith(
      status: SearchStateStatus.searchLoading,
    ));
    final result = await _searchRepo.search(
      SearchParams(state.searchText.trim()),
      _cancelToken,
    );
    result.when(
      success: (searchResult) => emit(state.copyWith(
        status: SearchStateStatus.searchSuccess,
        searchResult: searchResult,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: SearchStateStatus.searchError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void _onChangeSearch(String? text) {
    emit(state.copyWith(
      status: SearchStateStatus.onChangeSearchText,
      searchText: text ?? '',
    ));
  }

  void debouncedSearch(String? text) {
    _onChangeSearch(text);
    _debouncer.run(() {
      search();
    });
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
