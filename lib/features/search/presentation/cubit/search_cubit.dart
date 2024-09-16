import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/search/data/models/search_params.dart';
import 'package:store_ify/features/search/data/repositories/search_repo.dart';
import 'package:store_ify/features/search/presentation/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _searchRepo;

  SearchCubit(
    this._searchRepo,
  ) : super(const SearchState.initial()) {
    searchController = TextEditingController();
  }

  late final TextEditingController searchController;
  final CancelToken _cancelToken = CancelToken();

  void search() async {
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

  @override
  Future<void> close() {
    searchController.dispose();
    _cancelToken.cancel();
    return super.close();
  }
}
