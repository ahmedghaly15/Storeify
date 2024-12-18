import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_state.dart';

class StoresCubit extends Cubit<StoresState> {
  final StoresRepo _storesRepo;

  StoresCubit(this._storesRepo) : super(StoresState.initial());

  final CancelToken _cancelToken = CancelToken();

  Future<void> fetchStores() async {
    emit(state.copyWith(
      status: StoresStateStatus.fetchStoresLoading,
    ));
    final result = await _storesRepo.fetchStores(_cancelToken);
    result.when(
      success: (stores) => emit(state.copyWith(
        status: StoresStateStatus.fetchStoresSuccess,
        stores: stores,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: StoresStateStatus.fetchStoresError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void fetchCategoryStores(String categoryId) async {
    emit(state.copyWith(
      status: StoresStateStatus.fetchCategoryStoresLoading,
    ));
    final result = await _storesRepo.fetchCategoryStores(
      categoryId,
      _cancelToken,
    );
    result.when(
      success: (categoryStores) => emit(state.copyWith(
        status: StoresStateStatus.fetchCategoryStoresSuccess,
        categoryStores: categoryStores,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: StoresStateStatus.fetchCategoryStoresError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void selectStore(int index) {
    if (state.currentStoreIndex != index) {
      emit(state.copyWith(
        status: StoresStateStatus.updateCurrentSelectedStore,
        currentStoreIndex: index,
      ));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
