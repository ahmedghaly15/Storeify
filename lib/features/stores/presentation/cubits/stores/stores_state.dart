import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';

part 'stores_state.freezed.dart';

enum StoresStateStatus {
  initial,
  fetchStoresLoading,
  fetchStoresSuccess,
  fetchStoresError,
  fetchCategoryStoresLoading,
  fetchCategoryStoresSuccess,
  fetchCategoryStoresError,
  updateCurrentSelectedStore
}

@freezed
class StoresState with _$StoresState {
  const factory StoresState({
    required StoresStateStatus status,
    FetchStoresResponse? stores,
    FetchStoresResponse? categoryStores,
    String? error,
    @Default(0) int currentStoreIndex,
  }) = _StoresState;

  factory StoresState.initial() => const StoresState(
        status: StoresStateStatus.initial,
      );
}
