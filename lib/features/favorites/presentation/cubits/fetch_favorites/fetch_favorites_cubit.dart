import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/favorites/data/repositories/favorites_repo.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_state.dart';

class FetchFavoritesCubit extends Cubit<FetchFavoritesState> {
  FetchFavoritesCubit(this._favoritesRepo)
      : super(FetchFavoritesState.initial());

  final FavoritesRepo _favoritesRepo;
  final CancelToken _cancelToken = CancelToken();

  void fetchFavProducts() async {
    emit(state.copyWith(
      status: FetchFavoritesStatus.fetchFavoriteProductsLoading,
    ));
    final result = await _favoritesRepo.fetchFavoriteProducts(_cancelToken);
    result.when(
      success: (favorites) => emit(state.copyWith(
        status: FetchFavoritesStatus.fetchFavoriteProductsSuccess,
        favProducts: favorites,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: FetchFavoritesStatus.fetchFavoriteProductsError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void fetchFavStores() async {
    emit(state.copyWith(
      status: FetchFavoritesStatus.fetchFavStoresLoading,
    ));
    final result = await _favoritesRepo.fetchFavStores(_cancelToken);
    result.when(
      success: (favStores) => emit(state.copyWith(
        status: FetchFavoritesStatus.fetchFavStoresSuccess,
        favStores: favStores,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: FetchFavoritesStatus.fetchFavStoresError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void _updateSelectedFavCategory(int index) {
    if (state.selectedFavCategory != index) {
      emit(state.copyWith(
        status: FetchFavoritesStatus.updateSelectedFavCategory,
        selectedFavCategory: index,
      ));
    }
  }

  void updateSelectedFavCategoryAndFetchItsData(int index) {
    _updateSelectedFavCategory(index);
    _fetchFavorites();
  }

  void _fetchFavorites() {
    switch (state.selectedFavCategory) {
      case 0:
        fetchFavStores();
      case 1:
        fetchFavProducts();
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
