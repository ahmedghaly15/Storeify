import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_state.dart';

class StoresCubit extends Cubit<StoresState> {
  StoresCubit(this._storesRepo) : super(const StoresState.initial());

  final StoresRepo _storesRepo;
  final CancelToken _cancelToken = CancelToken();

  void fetchStores() async {
    emit(const StoresState.fetchStoresLoading());
    final result = await _storesRepo.fetchStores(_cancelToken);
    result.when(
      success: (fetchStoresResponse) =>
          emit(StoresState.fetchStoresSuccess(fetchStoresResponse)),
      error: (errorModel) =>
          emit(StoresState.fetchStoresError(errorModel.error ?? '')),
    );
  }

  void fetchCategoryStores(String categoryId) async {
    emit(const StoresState.fetchCategoryStoresLoading());
    final result = await _storesRepo.fetchCategoryStores(
      categoryId,
      _cancelToken,
    );
    result.when(
      success: (categoryStores) =>
          emit(StoresState.fetchCategoryStoresSuccess(categoryStores)),
      error: (errorModel) =>
          emit(StoresState.fetchCategoryStoresError(errorModel.error ?? '')),
    );
  }

  int currentSelectedStore = 1;
  void _updateCurrentSelectedStore(int index) {
    if (currentSelectedStore != index) {
      currentSelectedStore = index;
      emit(StoresState.updateCurrentSelectedStore(index));
    }
  }

  int currentStoreIndex = 0;
  void _updateCurrentStoreIndex(int index) {
    if (currentStoreIndex != index) {
      currentStoreIndex = index;
      emit(StoresState.updateCurrentStoreIndex(index));
    }
  }

  void updateSelectedStoreAndItsIndex({
    required int index,
    required int storeId,
  }) {
    _updateCurrentSelectedStore(storeId);
    _updateCurrentStoreIndex(index);
  }

  bool isStoreActive(int storeId) => currentSelectedStore == storeId;

  Color activeStoreColor(int storeId) =>
      isStoreActive(storeId) ? AppColors.primaryColor : AppColors.blueColor;

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
