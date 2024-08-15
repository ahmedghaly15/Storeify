import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';

part 'sub_category_state.freezed.dart';

@freezed
class SubCategoryState<T> with _$SubCategoryState<T> {
  const factory SubCategoryState.initial() = _Initial;
  const factory SubCategoryState.fetchSubCategoryLoading() =
      FetchSubCategoryLoading;
  const factory SubCategoryState.fetchSubCategorySuccess(
      FetchSubCategoryResponse subCategory) = FetchSubCategorySuccess<T>;
  const factory SubCategoryState.fetchSubCategoryError(error) =
      FetchSubCategoryError<T>;
  const factory SubCategoryState.updateCurrentSubCategoryIndex(
      int currentIndex) = UpdateCurrentSubCategoryIndex<T>;
}
