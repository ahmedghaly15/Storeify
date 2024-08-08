import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.fetchHomeDataLoading() = FetchHomeDataLoading;
  const factory HomeState.fetchHomeDataSuccess(FetchHomeResponse homeResponse) =
      FetchHomeDataSuccess<T>;
  const factory HomeState.fetchHomeDataError(String error) =
      FetchHomeDataError<T>;
}
