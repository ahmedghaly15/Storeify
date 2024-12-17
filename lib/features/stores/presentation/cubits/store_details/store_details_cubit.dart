import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';

class StoreDetailsCubit extends Cubit<StoreDetailsState> {
  final StoresRepo _storesRepo;

  StoreDetailsCubit(this._storesRepo) : super(StoreDetailsState.initial());

  final CancelToken _cancelToken = CancelToken();

  Future<void> fetchStoreBranches(int storeId) async {
    emit(state.copyWith(
      status: StoreDetailsStateStatus.fetchStoreBranchesLoading,
    ));
    final result = await _storesRepo.fetchStoreBranches(
      storeId,
      _cancelToken,
    );
    result.when(
      success: (storeBranches) => emit(state.copyWith(
        status: StoreDetailsStateStatus.fetchStoreBranchesSuccess,
        storeBranches: storeBranches,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: StoreDetailsStateStatus.fetchStoreBranchesError,
        error: errorModel.error ?? '',
      )),
    );
  }

  Future<void> fetchStoreCategories(int storeId) async {
    emit(state.copyWith(
      status: StoreDetailsStateStatus.fetchStoreCategoriesLoading,
    ));
    final result = await _storesRepo.fetchStoreCategories(
      storeId,
      _cancelToken,
    );
    result.when(
      success: (storeCategories) => emit(state.copyWith(
        status: StoreDetailsStateStatus.fetchStoreCategoriesSuccess,
        storeCategories: storeCategories,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: StoreDetailsStateStatus.fetchStoreCategoriesError,
        error: errorModel.error ?? '',
      )),
    );
  }

  Future<void> fetchStoreOffers(int storeId) async {
    emit(state.copyWith(
      status: StoreDetailsStateStatus.fetchStoreOffersLoading,
    ));
    final result = await _storesRepo.fetchStoreOffers(
      storeId,
      _cancelToken,
    );
    result.when(
      success: (storeOffers) => emit(state.copyWith(
        status: StoreDetailsStateStatus.fetchStoreOffersSuccess,
        storeOffers: storeOffers,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: StoreDetailsStateStatus.fetchStoreOffersError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void updateSelectedStoreDetail(int index) {
    emit(state.copyWith(
      status: StoreDetailsStateStatus.updateCurrentDetailsIndex,
      selectedDetailIndex: index,
    ));
  }

  void fetchStoreData(int storeId) {
    switch (state.selectedDetailIndex) {
      case 0:
        fetchStoreOffers(storeId);
      case 1:
        fetchStoreBranches(storeId);
      case 2:
        fetchStoreCategories(storeId);
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
