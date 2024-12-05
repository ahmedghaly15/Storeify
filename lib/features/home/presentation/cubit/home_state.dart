import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';

part 'home_state.freezed.dart';

enum HomeStateStatus {
  initial,
  showLocationDialog,
  fetchHomeDataLoading,
  fetchHomeDataSuccess,
  fetchHomeDataError,
}

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState({
    required HomeStateStatus status,
    FetchHomeResponse? homeData,
    String? error,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        status: HomeStateStatus.initial,
      );
}
