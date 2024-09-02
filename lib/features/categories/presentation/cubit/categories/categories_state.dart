import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState<T> with _$CategoriesState<T> {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.fetchCategoriesLoading() =
      FetchCategoriesLoading;
  const factory CategoriesState.fetchCategoriesSuccess(
          FetchCategoriesResponse fetchCategoriesResponse) =
      FetchCategoriesSuccess<T>;
  const factory CategoriesState.fetchCategoriesError(error) =
      FetchCategoriesError<T>;
}
