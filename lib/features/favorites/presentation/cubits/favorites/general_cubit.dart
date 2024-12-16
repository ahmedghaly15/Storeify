import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/enums.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/cache_keys.dart';
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

  void preferItem({
    int? storeId,
    int? productId,
    required FavItemType itemType,
  }) async {
    final isStoreItem = itemType == FavItemType.store;
    emit(state.copyWith(
      status: isStoreItem
          ? GeneralStateStatus.preferStoreLoading
          : GeneralStateStatus.preferProductLoading,
    ));
    final result = await favoritesRepo.preferItem(
      params: PreferParams(storeId: storeId, productId: productId),
      itemType: itemType,
      cancelToken: _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: isStoreItem
            ? GeneralStateStatus.preferStoreSuccess
            : GeneralStateStatus.preferProductSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: isStoreItem
            ? GeneralStateStatus.preferStoreError
            : GeneralStateStatus.preferProductError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void removeItemFromFavs({
    required int itemId,
    required FavItemType itemType,
  }) async {
    final isStoreItem = itemType == FavItemType.store;
    emit(state.copyWith(
      status: isStoreItem
          ? GeneralStateStatus.removeStoreFromFavsLoading
          : GeneralStateStatus.removeProductFromFavsLoading,
    ));
    final result = await favoritesRepo.removeItemFromFavs(
      itemId: itemId,
      itemType: itemType,
      cancelToken: _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: isStoreItem
            ? GeneralStateStatus.removeStoreFromFavsSuccess
            : GeneralStateStatus.removeProductFromFavsSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: isStoreItem
            ? GeneralStateStatus.removeStoreFromFavsError
            : GeneralStateStatus.removeProductFromFavsError,
        error: errorModel.error ?? '',
      )),
    );
  }

  Future<void> _cacheSelectedTheme(Brightness brightness) async {
    final themeIndex = brightness == Brightness.light ? 0 : 1;
    debugPrint('THEME INDEX: $themeIndex');
    await SharedPrefHelper.setData(CacheKeys.appTheme, themeIndex);
  }

  Future<void> _retrieveCachedTheme() async {
    if (isFirstLaunch) {
      debugPrint('************ THIS IS OUR FIRST LAUNCH ************');
      _cacheSelectedTheme(
          isDeviceDarkModeActive ? Brightness.dark : Brightness.light);
      await SharedPrefHelper.setData(CacheKeys.firstLaunch, false);
      emit(state.copyWith(
        theme:
            isDeviceDarkModeActive ? AppThemes.darkMode : AppThemes.lightMode,
      ));
    } else {
      debugPrint('************ THIS IS NOT OUR FIRST LAUNCH ************');
      final cachedThemeIndex = SharedPrefHelper.getInt(CacheKeys.appTheme) ?? 0;
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

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
