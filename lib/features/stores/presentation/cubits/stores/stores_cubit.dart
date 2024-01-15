import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/stores/data/models/stores_model.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';

part 'stores_state.dart';

class StoresCubit extends Cubit<StoresState> {
  final StoresRepo storesRepo;

  StoresCubit({
    required this.storesRepo,
  }) : super(const StoresInitial());

  void getStores() {
    emit(const GetStoresLoading());

    storesRepo.getStores().then(
      (value) {
        value.fold(
          (failure) => emit(
            GetStoresError(error: failure.errMessage.toString()),
          ),
          (stores) => emit(GetStoresSuccess(stores: stores)),
        );
      },
    );
  }
}
