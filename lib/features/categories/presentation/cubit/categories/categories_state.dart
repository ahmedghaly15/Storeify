import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/categories/data/models/category.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState<T> with _$CategoriesState<T> {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.fetchCategoriesLoading() =
      FetchCategoriesLoading;
  const factory CategoriesState.fetchCategoriesSuccess(
      List<Category> categories) = FetchCategoriesSuccess<T>;
  const factory CategoriesState.fetchCategoriesError(error) =
      FetchCategoriesError<T>;
}
