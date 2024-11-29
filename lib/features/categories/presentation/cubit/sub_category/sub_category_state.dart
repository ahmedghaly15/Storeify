import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';

part 'sub_category_state.freezed.dart';

enum SubCategoryStateStatus {
  initial,
  fetchSubCategoryLoading,
  fetchSubCategorySuccess,
  fetchSubCategoryError,
  updateSelectedSubCategory,
}

@freezed
class SubCategoryState with _$SubCategoryState {
  const factory SubCategoryState({
    required SubCategoryStateStatus status,
    FetchSubCategoryResponse? subCategory,
    String? error,
    @Default(0) int selectedSubCategory,
  }) = _SubCategoryState;

  factory SubCategoryState.initial() => const SubCategoryState(
        status: SubCategoryStateStatus.initial,
      );
}
