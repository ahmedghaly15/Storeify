import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/stores/data/models/stores_model.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';

part 'clothes_stores_state.dart';

class ClothesStoresCubit extends Cubit<ClothesStoresState> {
  final StoresRepo storesRepo;

  ClothesStoresCubit({
    required this.storesRepo,
  }) : super(const ClothesStoresInitial());

  void getClothesStores() {
    emit(const GetClothesStoresLoading());

    storesRepo.getClothesStores().then(
      (value) {
        value.fold(
          (failure) => emit(
            GetClothesStoresError(error: failure.errMessage.toString()),
          ),
          (clothesStores) =>
              emit(GetClothesStoresSuccess(clothesStores: clothesStores)),
        );
      },
    );
  }
}
