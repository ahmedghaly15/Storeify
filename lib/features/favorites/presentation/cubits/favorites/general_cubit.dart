import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/themes/app_themes.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/check_for_first_launch_and_device_theme.dart';
import 'package:store_ify/features/favorites/data/models/prefer_params.dart';
import 'package:store_ify/features/favorites/data/repositories/favorites_repo.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';
import 'package:store_ify/features/home/data/repos/home_repo.dart';

class GeneralCubit extends Cubit<GeneralState> {
  final FavoritesRepo favoritesRepo;
  final HomeRepo homeRepo;

  GeneralCubit({
    required this.favoritesRepo,
    required this.homeRepo,
  }) : super(GeneralState.initial()) {
    _retrieveCachedTheme();
  }

  final CancelToken _cancelToken = CancelToken();

  Future<void> fetchHomeData() async {
    emit(state.copyWith(
      status: GeneralStateStatus.fetchHomeDataLoading,
    ));
    final result = await homeRepo.fetchHomeData();
    result.when(
      success: (homeData) => emit(state.copyWith(
        status: GeneralStateStatus.fetchHomeDataSuccess,
        homeData: homeData,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: GeneralStateStatus.fetchHomeDataError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void deleteCachedAndFetchHomeData() async {
    await homeRepo.deleteHomeCachedData();
    fetchHomeData();
  }

  void preferProductOrNot({
    required bool isFavorited,
    required int productId,
  }) {
    isFavorited ? _removeProductFromFavs(productId) : _preferProduct(productId);
  }

  void _preferProduct(int productId) async {
    emit(state.copyWith(
      status: GeneralStateStatus.preferProductLoading,
    ));
    final result = await favoritesRepo.preferItem(
      itemType: FavItemType.product,
      params: PreferParams(productId: productId),
      cancelToken: _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: GeneralStateStatus.preferProductSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: GeneralStateStatus.preferProductError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void _removeProductFromFavs(int productId) async {
    emit(state.copyWith(
      status: GeneralStateStatus.removeProductFromFavsLoading,
    ));
    final result = await favoritesRepo.removeItemFromFavs(
      itemId: productId,
      itemType: FavItemType.product,
      cancelToken: _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: GeneralStateStatus.removeProductFromFavsSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: GeneralStateStatus.removeProductFromFavsError,
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
      status: GeneralStateStatus.preferStoreLoading,
    ));
    final result = await favoritesRepo.preferItem(
      params: PreferParams(storeId: storeId),
      itemType: FavItemType.store,
      cancelToken: _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: GeneralStateStatus.preferStoreSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: GeneralStateStatus.preferStoreError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void _removeStoreFromFavs(int storeId) async {
    emit(state.copyWith(
      status: GeneralStateStatus.removeStoreFromFavsLoading,
    ));
    final result = await favoritesRepo.removeItemFromFavs(
      itemId: storeId,
      itemType: FavItemType.store,
      cancelToken: _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: GeneralStateStatus.removeStoreFromFavsSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: GeneralStateStatus.removeStoreFromFavsError,
        error: errorModel.error ?? '',
      )),
    );
  }

  Future<void> deleteCachedFavProducts() async {
    await favoritesRepo.deleteCachedFavProducts();
  }

  Future<void> deleteCachedFavStores() async {
    await favoritesRepo.deleteCachedFavStores();
  }

  Future<void> _cacheSelectedTheme(Brightness brightness) async {
    final themeIndex = brightness == Brightness.light ? 0 : 1;
    debugPrint('THEME INDEX: $themeIndex');
    await SharedPrefHelper.setData(SharedPrefKeys.appTheme, themeIndex);
  }

  Future<void> _retrieveCachedTheme() async {
    if (isFirstLaunch) {
      debugPrint('************ THIS IS OUR FIRST LAUNCH ************');
      _cacheSelectedTheme(
          isDeviceDarkModeActive ? Brightness.dark : Brightness.light);
      await SharedPrefHelper.setData(SharedPrefKeys.firstLaunch, false);
      emit(state.copyWith(
        theme:
            isDeviceDarkModeActive ? AppThemes.darkMode : AppThemes.lightMode,
      ));
    } else {
      debugPrint('************ THIS IS NOT OUR FIRST LAUNCH ************');
      final cachedThemeIndex =
          await SharedPrefHelper.getInt(SharedPrefKeys.appTheme) ?? 0;
      final savedTheme =
          cachedThemeIndex == 0 ? AppThemes.lightMode : AppThemes.darkMode;
      emit(state.copyWith(theme: savedTheme));
    }
  }

  void toggleTheme() async {
    if (isFirstLaunch) {
      await checkForFirstLaunchAndDeviceTheme();
    }
    emit(state.copyWith(
      status: GeneralStateStatus.toggleTheme,
      theme: state.theme!.brightness == Brightness.light
          ? AppThemes.darkMode
          : AppThemes.lightMode,
    ));
    _cacheSelectedTheme(state.theme!.brightness);
  }

  void increaseProductQuantity() {
    emit(state.copyWith(
      status: GeneralStateStatus.increaseProductQuantity,
      productQuantity: state.productQuantity + 1,
    ));
  }

  void decreaseProductQuantity() {
    if (state.productQuantity > 1) {
      emit(state.copyWith(
        status: GeneralStateStatus.decreaseProductQuantity,
        productQuantity: state.productQuantity - 1,
      ));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
