import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';

part 'store_details_state.freezed.dart';

@freezed
class StoreDetailsState<T> with _$StoreDetailsState<T> {
  const factory StoreDetailsState.initial() = _Initial;
  const factory StoreDetailsState.fetchStoreBranchesLoading() =
      FetchStoreBranchesLoading;
  const factory StoreDetailsState.fetchStoreBranchesSuccess(
      FetchStoreBranchesResponse storeBranches) = FetchStoreBranchesSuccess<T>;
  const factory StoreDetailsState.fetchStoreBranchesError(String error) =
      FetchStoreBranchesError<T>;
}
