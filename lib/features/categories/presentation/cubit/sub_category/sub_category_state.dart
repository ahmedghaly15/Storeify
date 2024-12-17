import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/models/sub_category.dart';
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
    FetchSubCategoryResponse? subCategoryResponse,
    String? error,
    SubCategory? selectedSubCategory,
  }) = _SubCategoryState;

  factory SubCategoryState.initial() => const SubCategoryState(
        status: SubCategoryStateStatus.initial,
      );
}
