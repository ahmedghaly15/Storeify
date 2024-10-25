import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';

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
  const factory StoreDetailsState.fetchStoreOffersLoading() =
      FetchStoreOffersLoading;
  const factory StoreDetailsState.fetchStoreOffersSuccess(
      FetchStoreOffersResponse storeOffers) = FetchStoreOffersSuccess<T>;
  const factory StoreDetailsState.fetchStoreOffersError(String error) =
      FetchStoreOffersError<T>;
  const factory StoreDetailsState.updateCurrentDetailsIndex(int currentIndex) =
      UpdateCurrentDetailsIndex<T>;
}
