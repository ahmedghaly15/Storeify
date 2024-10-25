import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';

class StoreDetailsCubit extends Cubit<StoreDetailsState> {
  StoreDetailsCubit(
    this._storesRepo,
  ) : super(const StoreDetailsState.initial());

  final StoresRepo _storesRepo;
  final CancelToken _cancelToken = CancelToken();

  void fetchStoreBranches(int storeId) async {
    emit(const StoreDetailsState.fetchStoreBranchesLoading());
    final result = await _storesRepo.fetchStoreBranches(
      storeId,
      _cancelToken,
    );
    result.when(
      success: (storeBranches) =>
          emit(StoreDetailsState.fetchStoreBranchesSuccess(storeBranches)),
      error: (errorModel) => emit(
          StoreDetailsState.fetchStoreBranchesError(errorModel.error ?? '')),
    );
  }

  void fetchStoreCategories(int storeId) async {
    emit(const StoreDetailsState.fetchStoreCategoriesLoading());
    final result = await _storesRepo.fetchStoreCategories(
      storeId,
      _cancelToken,
    );
    result.when(
      success: (storeCategories) =>
          emit(StoreDetailsState.fetchStoreCategoriesSuccess(storeCategories)),
      error: (errorModel) => emit(
          StoreDetailsState.fetchStoreCategoriesError(errorModel.error ?? '')),
    );
  }

  void fetchStoreOffers(int storeId) async {
    emit(const StoreDetailsState.fetchStoreOffersLoading());
    final result = await _storesRepo.fetchStoreOffers(
      storeId,
      _cancelToken,
    );
    result.when(
      success: (storeOffers) =>
          emit(StoreDetailsState.fetchStoreOffersSuccess(storeOffers)),
      error: (errorModel) =>
          emit(StoreDetailsState.fetchStoreOffersError(errorModel.error ?? '')),
    );
  }

  int currentSubDetailsIndex = 0;
  void _updateCurrentStoreDetailIndex(int index) {
    if (currentSubDetailsIndex != index) {
      currentSubDetailsIndex = index;
      emit(StoreDetailsState.updateCurrentDetailsIndex(currentSubDetailsIndex));
    }
  }

  void updateCurrentStoreAndFetchItsData({
    required int index,
    required int storeId,
  }) {
    _updateCurrentStoreDetailIndex(index);
    _fetchStoreData(storeId);
  }

  void _fetchStoreData(int storeId) {
    switch (currentSubDetailsIndex) {
      case 0:
        fetchStoreOffers(storeId);
      case 1:
        fetchStoreBranches(storeId);
      case 2:
        fetchStoreCategories(storeId);
    }
  }

  Color selectedStoreDetailColor(BuildContext context, int index) =>
      _isActive(index) ? AppColors.primaryColor : _darkModeColor(context);

  Color _darkModeColor(BuildContext context) {
    return (context.isDarkModeActive
        ? AppColors.secondaryDarkColor!
        : AppColors.blueColor);
  }

  bool _isActive(int index) => currentSubDetailsIndex == index;

  Color storeDetailTextColor(BuildContext context, int index) {
    return _isActive(index)
        ? AppColors.primaryColor
        : _darkModeTextColor(context);
  }

  Color _darkModeTextColor(BuildContext context) {
    return (context.isDarkModeActive ? Colors.white : AppColors.blueColor);
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
