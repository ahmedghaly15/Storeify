import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';

part 'store_details_state.freezed.dart';

enum StoreDetailsStateStatus {
  initial,
  fetchStoreBranchesLoading,
  fetchStoreBranchesSuccess,
  fetchStoreBranchesError,
  fetchStoreCategoriesLoading,
  fetchStoreCategoriesSuccess,
  fetchStoreCategoriesError,
  fetchStoreOffersLoading,
  fetchStoreOffersSuccess,
  fetchStoreOffersError,
  updateCurrentDetailsIndex
}

@freezed
class StoreDetailsState with _$StoreDetailsState {
  const factory StoreDetailsState({
    required StoreDetailsStateStatus status,
    FetchStoreBranchesResponse? storeBranches,
    FetchStoreCategoriesResponse? storeCategories,
    FetchStoreOffersResponse? storeOffers,
    String? error,
    @Default(0) int selectedDetailIndex,
  }) = _StoreDetailsState;

  factory StoreDetailsState.initial() => const StoreDetailsState(
        status: StoreDetailsStateStatus.initial,
      );
}
