import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/features/home/data/repos/home_repo.dart';
import 'package:store_ify/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(HomeState.initial()) {
    _emitShowLocationDialog();
  }

  final CancelToken _cancelToken = CancelToken();

  Future<void> _emitShowLocationDialog() async {
    if (await LocationService.isLocationPermissionDenied()) {
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(
        status: HomeStateStatus.showLocationDialog,
      ));
    }
  }

  void fetchHomeData() async {
    emit(state.copyWith(
      status: HomeStateStatus.fetchHomeDataLoading,
    ));
    final result = await _homeRepo.fetchHomeData(_cancelToken);
    result.when(
      success: (homeData) => emit(state.copyWith(
        status: HomeStateStatus.fetchHomeDataSuccess,
        homeData: homeData,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: HomeStateStatus.fetchHomeDataError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void deleteCachedAndFetchHomeData() async {
    await _homeRepo.deleteHomeCachedData();
    fetchHomeData();
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
