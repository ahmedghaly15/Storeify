import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/categories/data/models/categories_model.dart';
import 'package:store_ify/features/categories/data/repositories/category_repo.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepo categoryRepo;

  CategoryCubit({
    required this.categoryRepo,
  }) : super(const CategoryInitial());

  List<CategoryModel> categories = <CategoryModel>[];

  void getCategories() {
    emit(const GetCategoriesLoading());

    categoryRepo.getCategories().then(
      (value) {
        value.fold(
          (failure) => emit(
            GetCategoriesError(error: failure.errMessage.toString()),
          ),
          (result) {
            emit(GetCategoriesSuccess(categories: result));
            categories = result;
          },
        );
      },
    );
  }
}
