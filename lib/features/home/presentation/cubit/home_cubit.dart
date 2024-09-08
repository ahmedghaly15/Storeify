import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/features/home/data/repos/home_repo.dart';
import 'package:store_ify/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  final HomeRepo _homeRepo;
  final CancelToken _cancelToken = CancelToken();

  void fetchHomeData() async {
    emit(const HomeState.fetchHomeDataLoading());
    final result = await _homeRepo.fetchHomeData(_cancelToken);
    result.when(
      success: (homeData) => emit(HomeState.fetchHomeDataSuccess(homeData)),
      error: (errorModel) =>
          emit(HomeState.fetchHomeDataError(errorModel.error ?? '')),
    );
  }

  void requestLocationPermission() async {
    await LocationService.requestPermission();
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
