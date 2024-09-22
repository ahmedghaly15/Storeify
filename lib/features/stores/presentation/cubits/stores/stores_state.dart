import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';

part 'stores_state.freezed.dart';

@freezed
class StoresState<T> with _$StoresState<T> {
  const factory StoresState.initial() = _Initial;
  const factory StoresState.fetchStoresLoading() = FetchStoresLoading;
  const factory StoresState.fetchStoresSuccess(FetchStoresResponse stores) =
      FetchStoresSuccess<T>;
  const factory StoresState.fetchStoresError(String error) =
      FetchStoresError<T>;
  const factory StoresState.fetchCategoryStoresLoading() =
      FetchCategoryStoresLoading;
  const factory StoresState.fetchCategoryStoresSuccess(
      FetchStoresResponse categoryStores) = FetchCategoryStoresSuccess<T>;
  const factory StoresState.fetchCategoryStoresError(String error) =
      FetchCategoryStoresError<T>;
  const factory StoresState.updateCurrentSelectedStore(int currentIndex) =
      UpdateCurrentSelectedStore<T>;
}
