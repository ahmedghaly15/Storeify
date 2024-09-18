import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/favorites/data/models/prefer_params.dart';
import 'package:store_ify/features/favorites/data/repositories/favorites_repo.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(
    this._favoritesRepo,
  ) : super(const FavoritesState.initial());

  final FavoritesRepo _favoritesRepo;
  final CancelToken _cancelToken = CancelToken();

  void _preferProduct(int productId) async {
    emit(const FavoritesState.preferProductLoading());
    final result = await _favoritesRepo.preferProduct(
      PreferParams(productId: productId),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(const FavoritesState.preferProductSuccess()),
      error: (errorModel) =>
          emit(FavoritesState.preferProductError(errorModel.error ?? '')),
    );
  }

  void _removeProductFromFavs(int productId) async {
    emit(const FavoritesState.removeProductFromFavsLoading());
    final result = await _favoritesRepo.removeProductFromFavs(
      productId,
      _cancelToken,
    );
    result.when(
      success: (_) => emit(const FavoritesState.removeProductFromFavsSuccess()),
      error: (error) => emit(
        FavoritesState.removeProductFromFavsError(error.error ?? ''),
      ),
    );
  }

  void preferProductOrNot({
    required bool isFavorited,
    required int productId,
  }) {
    isFavorited ? _removeProductFromFavs(productId) : _preferProduct(productId);
  }

  void preferStore(int storeId) async {
    emit(const FavoritesState.preferStoreLoading());
    final result = await _favoritesRepo.preferStore(
      PreferParams(storeId: storeId),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(const FavoritesState.preferStoreSuccess()),
      error: (errorModel) => emit(
        FavoritesState.preferStoreError(errorModel.error ?? ''),
      ),
    );
  }

  void removeStoreFromFavs(int storeId) async {
    emit(const FavoritesState.removeStoreFromFavsLoading());
    final result = await _favoritesRepo.removeStoreFromFavs(
      storeId,
      _cancelToken,
    );
    result.when(
        success: (_) => emit(const FavoritesState.removeStoreFromFavsSuccess()),
        error: (errorModel) => emit(
              FavoritesState.removeStoreFromFavsError(errorModel.error ?? ''),
            ));
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
