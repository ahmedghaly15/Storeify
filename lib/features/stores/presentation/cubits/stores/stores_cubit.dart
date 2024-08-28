import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/stores/data/models/store.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_state.dart';

class StoresCubit extends Cubit<StoresState> {
  StoresCubit(this._storesRepo) : super(const StoresState.initial());

  final StoresRepo _storesRepo;
  final CancelToken _cancelToken = CancelToken();

  List<Store>? stores;

  void fetchStores() async {
    emit(const StoresState.fetchStoresLoading());
    final result = await _storesRepo.fetchStores(_cancelToken);
    result.when(
      success: (fetchStoresResponse) {
        stores = fetchStoresResponse.stores;
        emit(StoresState.fetchStoresSuccess(fetchStoresResponse));
      },
      error: (error) =>
          emit(StoresState.fetchStoresError(error.apiErrorModel.error ?? '')),
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
      error: (error) => emit(StoresState.fetchCategoryStoresError(
          error.apiErrorModel.error ?? '')),
    );
  }

  int currentSelectedStore = 1;
  void updateCurrentSelectedStore(int index) {
    currentSelectedStore = index;
    emit(StoresState.updateCurrentSelectedStore(index));
  }

  int currentStoreIndex = 0;
  void updateCurrentStoreIndex(int index) {
    currentStoreIndex = index;
    emit(StoresState.updateCurrentStoreIndex(index));
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
