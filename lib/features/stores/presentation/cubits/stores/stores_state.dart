part of 'stores_cubit.dart';

abstract class StoresState extends Equatable {
  const StoresState();

  @override
  List<Object> get props => [];
}

class StoresInitial extends StoresState {
  const StoresInitial();
}

class GetStoresLoading extends StoresState {
  const GetStoresLoading();
}

class GetStoresSuccess extends StoresState {
  final List<StoresModel> stores;

  const GetStoresSuccess({required this.stores});

  @override
  List<Object> get props => [stores];
}

class GetStoresError extends StoresState {
  final String error;

  const GetStoresError({required this.error});

  @override
  List<Object> get props => [error];
}
