import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      success: (stores) => emit(StoresState.fetchStoresSuccess(stores)),
      error: (error) =>
          emit(StoresState.fetchStoresError(error.apiErrorModel.error ?? '')),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
