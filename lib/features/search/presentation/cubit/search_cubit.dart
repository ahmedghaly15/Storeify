import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
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
    searchController = TextEditingController();
    _debouncer = Debouncer(duration: const Duration(milliseconds: 500));
  }

  late final Debouncer _debouncer;
  late final TextEditingController searchController;
  final CancelToken _cancelToken = CancelToken();

  void search() async {
    emit(state.copyWith(
      status: SearchStateStatus.searchLoading,
    ));
    final result = await _searchRepo.search(
      SearchParams(searchController.text.trim()),
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

  void debouncedSearch(String? text) {
    _debouncer.run(() {
      search();
    });
  }

  void changeSearchText(String text) {
    searchController.text = text;
  }

  void fetchSearchData() async {
    emit(state.copyWith(
      status: SearchStateStatus.fetchSearchDataLoading,
    ));
    final result = await _searchRepo.fetchSearchData(_cancelToken);
    result.when(
      success: (searchData) => emit(state.copyWith(
        status: SearchStateStatus.fetchSearchDataSuccess,
        searchData: searchData,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: SearchStateStatus.fetchSearchDataError,
        error: errorModel.error ?? '',
      )),
    );
  }

  @override
  Future<void> close() {
    searchController.dispose();
    _cancelToken.cancel();
    return super.close();
  }
}
