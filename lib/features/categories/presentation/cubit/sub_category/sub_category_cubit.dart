import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_params.dart';
import 'package:store_ify/features/categories/data/repositories/categories_repo.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_state.dart';

class SubCategoryCubit extends Cubit<SubCategoryState> {
  SubCategoryCubit(
    this._categoriesRepo,
  ) : super(const SubCategoryState.initial());

  final CategoriesRepo _categoriesRepo;
  final CancelToken _cancelToken = CancelToken();

  void fetchSubCategory(FetchSubCategoryParams params) async {
    emit(const SubCategoryState.fetchSubCategoryLoading());
    final result = await _categoriesRepo.fetchSubCategory(params, _cancelToken);
    result.when(
      success: (subCategory) =>
          emit(SubCategoryState.fetchSubCategorySuccess(subCategory)),
      error: (errorModel) => emit(
        SubCategoryState.fetchSubCategoryError(errorModel.error ?? ''),
      ),
    );
  }

  int currentSubCategoryIndex = 1;
  void updateCurrentSubCategoryIndex(int index) {
    currentSubCategoryIndex = index;
    emit(SubCategoryState.updateCurrentSubCategoryIndex(index));
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
