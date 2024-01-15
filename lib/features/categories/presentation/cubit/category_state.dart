part of 'category_cubit.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {
  const CategoryInitial();
}

class GetCategoriesLoading extends CategoryState {
  const GetCategoriesLoading();
}

class GetCategoriesSuccess extends CategoryState {
  final List<CategoryModel> categories;

  const GetCategoriesSuccess({required this.categories});

  @override
  List<Object> get props => [categories];
}

class GetCategoriesError extends CategoryState {
  final String error;

  const GetCategoriesError({required this.error});

  @override
  List<Object> get props => [error];
}
