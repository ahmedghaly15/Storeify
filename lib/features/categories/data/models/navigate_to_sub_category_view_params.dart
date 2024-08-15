import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/home/data/models/sub_category.dart';

part 'navigate_to_sub_category_view_params.freezed.dart';

@freezed
class NavigateToSubCategoryViewParams with _$NavigateToSubCategoryViewParams {
  const factory NavigateToSubCategoryViewParams({
    required int categoryId,
    required SubCategory subCategory,
  }) = _NavigateToSubCategoryViewParams;
}
