import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/favorites/data/repositories/favorites_repo.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_state.dart';

class FetchFavoritesCubit extends Cubit<FetchFavoritesState> {
  FetchFavoritesCubit(
    this._favoritesRepo,
  ) : super(const FetchFavoritesState.initial());

  final FavoritesRepo _favoritesRepo;
  final CancelToken _cancelToken = CancelToken();

  void fetchFavProducts() async {
    emit(const FetchFavoritesState.fetchFavoriteProductsLoading());
    final result = await _favoritesRepo.fetchFavoriteProducts(_cancelToken);
    result.when(
      success: (favorites) =>
          emit(FetchFavoritesState.fetchFavoriteProductsSuccess(favorites)),
      error: (errorModel) => emit(
        FetchFavoritesState.fetchFavoriteProductsError(errorModel.error ?? ''),
      ),
    );
  }

  void fetchFavStores() async {
    emit(const FetchFavoritesState.fetchFavStoresLoading());
    final result = await _favoritesRepo.fetchFavStores(_cancelToken);
    result.when(
      success: (favStores) =>
          emit(FetchFavoritesState.fetchFavStoresSuccess(favStores)),
      error: (error) =>
          emit(FetchFavoritesState.fetchFavStoresError(error.error ?? '')),
    );
  }

  int selectedFavCategory = 0;
  void _updateSelectedFavCategory(int index) {
    if (selectedFavCategory != index) {
      selectedFavCategory = index;
      emit(FetchFavoritesState.updateSelectedFavCategory(index));
    }
  }

  void updateSelectedFavCategoryAndFetchItsData(int index) {
    _updateSelectedFavCategory(index);
    _fetchFavorites();
  }

  void _fetchFavorites() {
    switch (selectedFavCategory) {
      case 0:
        fetchFavStores();
      case 1:
        fetchFavProducts();
    }
  }

  Color selectedFavCategoryColor(int index) {
    return isActiveFavCategory(index)
        ? AppColors.primaryColor
        : AppColors.blueColor;
  }

  bool isActiveFavCategory(int index) {
    return selectedFavCategory == index;
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
