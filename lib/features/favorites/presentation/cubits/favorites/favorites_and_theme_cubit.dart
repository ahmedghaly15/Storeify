import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/themes/app_themes.dart';
import 'package:store_ify/features/favorites/data/models/prefer_params.dart';
import 'package:store_ify/features/favorites/data/repositories/favorites_repo.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_and_theme_state.dart';

class FavoritesAndThemeCubit extends Cubit<FavoritesAndThemeState> {
  FavoritesAndThemeCubit(
    this._favoritesRepo,
  ) : super(FavoritesAndThemeState.initial()) {
    _retrieveCachedTheme();
  }

  final FavoritesRepo _favoritesRepo;
  final CancelToken _cancelToken = CancelToken();

  void preferProductOrNot({
    required bool isFavorited,
    required int productId,
  }) {
    isFavorited ? _removeProductFromFavs(productId) : _preferProduct(productId);
  }

  void _preferProduct(int productId) async {
    emit(state.copyWith(
      status: FavoritesAndThemeStatus.preferProductLoading,
    ));
    final result = await _favoritesRepo.preferItem(
      itemType: FavItemType.product,
      params: PreferParams(productId: productId),
      cancelToken: _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: FavoritesAndThemeStatus.preferProductSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: FavoritesAndThemeStatus.preferProductError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void _removeProductFromFavs(int productId) async {
    emit(state.copyWith(
      status: FavoritesAndThemeStatus.removeProductFromFavsLoading,
    ));
    final result = await _favoritesRepo.removeItemFromFavs(
      itemId: productId,
      itemType: FavItemType.product,
      cancelToken: _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: FavoritesAndThemeStatus.removeProductFromFavsSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: FavoritesAndThemeStatus.removeProductFromFavsError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void preferStoreOrNot({
    required bool isFavorited,
    required int storeId,
  }) {
    isFavorited ? _removeStoreFromFavs(storeId) : _preferStore(storeId);
  }

  void _preferStore(int storeId) async {
    emit(state.copyWith(
      status: FavoritesAndThemeStatus.preferStoreLoading,
    ));
    final result = await _favoritesRepo.preferItem(
      params: PreferParams(storeId: storeId),
      itemType: FavItemType.store,
      cancelToken: _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: FavoritesAndThemeStatus.preferStoreSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: FavoritesAndThemeStatus.preferStoreError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void _removeStoreFromFavs(int storeId) async {
    emit(state.copyWith(
      status: FavoritesAndThemeStatus.removeStoreFromFavsLoading,
    ));
    final result = await _favoritesRepo.removeItemFromFavs(
      itemId: storeId,
      itemType: FavItemType.store,
      cancelToken: _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: FavoritesAndThemeStatus.removeStoreFromFavsSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: FavoritesAndThemeStatus.removeStoreFromFavsError,
        error: errorModel.error ?? '',
      )),
    );
  }

  Future<void> deleteCachedFavProducts() async {
    await _favoritesRepo.deleteCachedFavProducts();
  }

  Future<void> deleteCachedFavStores() async {
    await _favoritesRepo.deleteCachedFavStores();
  }

  Future<void> _cacheSelectedTheme(Brightness brightness) async {
    final themeIndex = brightness == Brightness.light ? 0 : 1;
    debugPrint('THEME INDEX: $themeIndex');
    await SharedPrefHelper.setData(SharedPrefKeys.appTheme, themeIndex);
  }

  Future<void> _retrieveCachedTheme() async {
    final cachedThemeIndex =
        await SharedPrefHelper.getInt(SharedPrefKeys.appTheme) ?? 0;
    final savedTheme =
        cachedThemeIndex == 0 ? AppThemes.lightMode : AppThemes.darkMode;
    emit(state.copyWith(theme: savedTheme));
  }

  void toggleTheme() {
    emit(state.copyWith(
      status: FavoritesAndThemeStatus.toggleTheme,
      theme: state.theme!.brightness == Brightness.light
          ? AppThemes.darkMode
          : AppThemes.lightMode,
    ));
    _cacheSelectedTheme(state.theme!.brightness);
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
