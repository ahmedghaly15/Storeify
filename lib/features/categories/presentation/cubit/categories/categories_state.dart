import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';

part 'categories_state.freezed.dart';

enum CategoriesStateStatus {
  initial,
  fetchCategoriesLoading,
  fetchCategoriesSuccess,
  fetchCategoriesError,
}

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    required CategoriesStateStatus status,
    FetchCategoriesResponse? categoriesResponse,
    String? error,
  }) = _CategoriesState;

  factory CategoriesState.initial() => const CategoriesState(
        status: CategoriesStateStatus.initial,
      );
}
