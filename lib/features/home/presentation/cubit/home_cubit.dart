import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/features/home/data/repos/home_repo.dart';
import 'package:store_ify/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial()) {
    _emitShowLocationDialog();
  }

  final CancelToken _cancelToken = CancelToken();

  Future<void> _emitShowLocationDialog() async {
    if (await LocationService.isLocationPermissionDenied()) {
      await Future.delayed(const Duration(seconds: 1));
      emit(const HomeState.showLocationDialog());
    }
  }

  void fetchHomeData() async {
    emit(const HomeState.fetchHomeDataLoading());
    final result = await _homeRepo.fetchHomeData(_cancelToken);
    result.when(
      success: (homeData) => emit(HomeState.fetchHomeDataSuccess(homeData)),
      error: (errorModel) =>
          emit(HomeState.fetchHomeDataError(errorModel.error ?? '')),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
