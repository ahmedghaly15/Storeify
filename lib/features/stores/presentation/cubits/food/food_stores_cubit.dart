import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/stores/data/models/stores_model.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';

part 'food_stores_state.dart';

class FoodStoresCubit extends Cubit<FoodStoresState> {
  final StoresRepo storesRepo;

  FoodStoresCubit({
    required this.storesRepo,
  }) : super(const FoodStoresInitial());

  void getFoodStores() {
    emit(const GetFoodStoresLoading());

    storesRepo.getFoodStores().then(
      (value) {
        value.fold(
          (failure) => emit(
            GetFoodStoresError(error: failure.errMessage.toString()),
          ),
          (foodStores) => emit(GetFoodStoresSuccess(food: foodStores)),
        );
      },
    );
  }
}
