import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_sub_category_params.freezed.dart';

@freezed
class FetchSubCategoryParams with _$FetchSubCategoryParams {
  const factory FetchSubCategoryParams({
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'sub_category_id') required int subCategoryId,
  }) = _FetchSubCategoryParams;
}
