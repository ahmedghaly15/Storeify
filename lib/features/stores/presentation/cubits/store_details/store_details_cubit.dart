import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  void updateCurrentStoreDetailIndex(int index) {
    currentSubDetailsIndex = index;
    emit(StoreDetailsState.updateCurrentDetailsIndex(currentSubDetailsIndex));
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
