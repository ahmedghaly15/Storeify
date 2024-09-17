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
  ) : super(const SearchState.initial()) {
    _initSearchObjects();
  }

  void _initSearchObjects() {
    searchController = TextEditingController();
    _debouncer = Debouncer(duration: const Duration(milliseconds: 500));
  }

  late final TextEditingController searchController;
  late final Debouncer _debouncer;
  final CancelToken _cancelToken = CancelToken();

  void _search() async {
    emit(const SearchState.searchLoading());
    final result = await _searchRepo.search(
      SearchParams(searchController.text.trim()),
      _cancelToken,
    );
    result.when(
      success: (searchResult) => emit(SearchState.searchSuccess(searchResult)),
      error: (error) => emit(SearchState.searchError(error.error ?? '')),
    );
  }

  void _updateSearchText(String text) {
    if (searchController.text != text) {
      searchController.text = text;
      emit(SearchState.updateSearchText(searchController.text));
    }
  }

  void debouncedSearch(String text) {
    _debouncer.run(() {
      _updateSearchText(text);
      _search();
    });
  }

  @override
  Future<void> close() {
    searchController.dispose();
    _cancelToken.cancel();
    return super.close();
  }
}
