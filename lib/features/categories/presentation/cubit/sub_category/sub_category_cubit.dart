import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      success: (subCategory) => emit(state.copyWith(
        status: SubCategoryStateStatus.fetchSubCategorySuccess,
        subCategory: subCategory,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: SubCategoryStateStatus.fetchSubCategoryError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void updateCurrentSubCategoryIndex(int index) {
    if (state.selectedSubCategory != index) {
      emit(state.copyWith(
        status: SubCategoryStateStatus.updateSelectedSubCategory,
        selectedSubCategory: index,
      ));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
