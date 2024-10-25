import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_state.dart';
import 'package:store_ify/features/home/presentation/cubit/home_cubit.dart';

class FavoritesActionBlocListener extends StatelessWidget {
  const FavoritesActionBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoritesCubit, FavoritesState>(
      listenWhen: (_, current) =>
          current is PreferProductSuccess ||
          current is RemoveProductFromFavsSuccess ||
          current is PreferStoreSuccess ||
          current is RemoveStoreFromFavsSuccess,
      listener: (context, state) {
        state.whenOrNull(
          preferProductSuccess: () async {
            context.read<HomeCubit>().deleteCachedAndFetchHomeData();
          },
          removeProductFromFavsSuccess: () {
            context.read<HomeCubit>().deleteCachedAndFetchHomeData();
          },
          preferStoreSuccess: () async {
            context.read<HomeCubit>().deleteCachedAndFetchHomeData();
          },
          removeStoreFromFavsSuccess: () {
            context.read<HomeCubit>().deleteCachedAndFetchHomeData();
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
