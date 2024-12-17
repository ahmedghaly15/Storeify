import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/models/sub_category.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_params.dart';
import 'package:store_ify/features/categories/data/repositories/categories_repo.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_state.dart';

class SubCategoryCubit extends Cubit<SubCategoryState> {
  SubCategoryCubit(
    this._categoriesRepo,
  ) : super(SubCategoryState.initial());

  final CategoriesRepo _categoriesRepo;
  final CancelToken _cancelToken = CancelToken();

  Future<void> fetchSubCategory(FetchSubCategoryParams params) async {
    emit(state.copyWith(
      status: SubCategoryStateStatus.fetchSubCategoryLoading,
    ));
    final result = await _categoriesRepo.fetchSubCategory(params, _cancelToken);
    result.when(
      success: (subCategoryResponse) => emit(state.copyWith(
        status: SubCategoryStateStatus.fetchSubCategorySuccess,
        subCategoryResponse: subCategoryResponse,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: SubCategoryStateStatus.fetchSubCategoryError,
        error: errorModel.error ?? '',
      )),
    );
  }

  SubCategory get selectedSubCategory => state.selectedSubCategory!;
  void selectSubCategory(SubCategory subCategory) {
    emit(state.copyWith(
      status: SubCategoryStateStatus.updateSelectedSubCategory,
      selectedSubCategory: subCategory,
    ));
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
