import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/categories/data/repositories/categories_repo.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories/categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this._categoriesRepo) : super(CategoriesState.initial());

  final CategoriesRepo _categoriesRepo;
  final CancelToken _cancelToken = CancelToken();

  Future<void> fetchCategories() async {
    emit(state.copyWith(
      status: CategoriesStateStatus.fetchCategoriesLoading,
    ));
    final result = await _categoriesRepo.fetchCategories(_cancelToken);
    result.when(
      success: (categoriesResponse) => emit(state.copyWith(
        status: CategoriesStateStatus.fetchCategoriesSuccess,
        categoriesResponse: categoriesResponse,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: CategoriesStateStatus.fetchCategoriesError,
        error: errorModel.error ?? '',
      )),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
