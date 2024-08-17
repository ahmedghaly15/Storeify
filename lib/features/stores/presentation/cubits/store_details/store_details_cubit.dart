import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';

class StoreDetailsCubit extends Cubit<StoreDetailsState> {
  StoreDetailsCubit(this._storesRepo)
      : super(const StoreDetailsState.initial());

  final StoresRepo _storesRepo;
  final CancelToken _cancelToken = CancelToken();

  void fetchStoreBranches(String storeId) async {
    emit(const StoreDetailsState.fetchStoreBranchesLoading());
    final result = await _storesRepo.fetchStoreBranches(
      storeId,
      _cancelToken,
    );
    result.when(
      success: (storeBranches) =>
          emit(StoreDetailsState.fetchStoreBranchesSuccess(storeBranches)),
      error: (error) => emit(StoreDetailsState.fetchStoreBranchesError(
          error.apiErrorModel.error ?? '')),
    );
  }

  void fetchStoreCategories(String storeId) async {
    emit(const StoreDetailsState.fetchStoreCategoriesLoading());
    final result = await _storesRepo.fetchStoreCategories(
      storeId,
      _cancelToken,
    );
    result.when(
      success: (storeCategories) =>
          emit(StoreDetailsState.fetchStoreCategoriesSuccess(storeCategories)),
      error: (error) => emit(StoreDetailsState.fetchStoreCategoriesError(
          error.apiErrorModel.error ?? '')),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
