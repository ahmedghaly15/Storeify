part of 'food_stores_cubit.dart';

abstract class FoodStoresState extends Equatable {
  const FoodStoresState();

  @override
  List<Object> get props => [];
}

class FoodStoresInitial extends FoodStoresState {
  const FoodStoresInitial();
}

class GetFoodStoresLoading extends FoodStoresState {
  const GetFoodStoresLoading();
}

class GetFoodStoresSuccess extends FoodStoresState {
  final List<StoresModel> food;

  const GetFoodStoresSuccess({required this.food});

  @override
  List<Object> get props => [food];
}

class GetFoodStoresError extends FoodStoresState {
  final String error;

  const GetFoodStoresError({required this.error});

  @override
  List<Object> get props => [error];
}
