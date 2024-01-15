part of 'clothes_stores_cubit.dart';

abstract class ClothesStoresState extends Equatable {
  const ClothesStoresState();

  @override
  List<Object> get props => [];
}

class ClothesStoresInitial extends ClothesStoresState {
  const ClothesStoresInitial();
}

class GetClothesStoresLoading extends ClothesStoresState {
  const GetClothesStoresLoading();
}

class GetClothesStoresSuccess extends ClothesStoresState {
  final List<StoresModel> clothesStores;

  const GetClothesStoresSuccess({required this.clothesStores});

  @override
  List<Object> get props => [clothesStores];
}

class GetClothesStoresError extends ClothesStoresState {
  final String error;

  const GetClothesStoresError({required this.error});

  @override
  List<Object> get props => [error];
}
