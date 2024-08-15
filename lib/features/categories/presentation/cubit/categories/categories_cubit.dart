import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/categories/data/repositories/categories_repo.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories/categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this._categoriesRepo)
      : super(const CategoriesState.initial());

  final CategoriesRepo _categoriesRepo;
  final CancelToken _cancelToken = CancelToken();

  void fetchCategories() async {
    emit(const CategoriesState.fetchCategoriesLoading());
    final result = await _categoriesRepo.fetchCategories(_cancelToken);
    result.when(
      success: (categories) =>
          emit(CategoriesState.fetchCategoriesSuccess(categories)),
      error: (error) => emit(CategoriesState.fetchCategoriesError(
          error.apiErrorModel.error ?? '')),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
