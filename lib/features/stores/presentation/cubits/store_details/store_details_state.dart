import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';

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
  const factory StoreDetailsState.fetchStoreCategoriesLoading() =
      FetchStoreCategoriesLoading;
  const factory StoreDetailsState.fetchStoreCategoriesSuccess(
          FetchStoreCategoriesResponse storeCategories) =
      FetchStoreCategoriesSuccess<T>;
  const factory StoreDetailsState.fetchStoreCategoriesError(String error) =
      FetchStoreCategoriesError<T>;
}
