import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/favorites/data/models/prefer_product_params.dart';
import 'package:store_ify/features/favorites/data/repositories/favorites_repo.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(
    this._favoritesRepo,
  ) : super(const FavoritesState.initial());

  final FavoritesRepo _favoritesRepo;
  final CancelToken _cancelToken = CancelToken();

  void preferProduct(int productId) async {
    emit(const FavoritesState.preferProductLoading());
    final result = await _favoritesRepo.preferProduct(
      PreferProductParams(productId: productId),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(const FavoritesState.preferProductSuccess()),
      error: (errorModel) =>
          emit(FavoritesState.preferProductError(errorModel.error ?? '')),
    );
  }

  void removeProductFromFavs(int productId) async {
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

  void fetchFavorites() async {
    emit(const FavoritesState.fetchFavoritesLoading());
    final result = await _favoritesRepo.fetchFavorites(_cancelToken);
    result.when(
      success: (favorites) =>
          emit(FavoritesState.fetchFavoritesSuccess(favorites)),
      error: (errorModel) => emit(
        FavoritesState.fetchFavoritesError(errorModel.error ?? ''),
      ),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
