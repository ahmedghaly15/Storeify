import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_and_theme_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_and_theme_state.dart';
import 'package:store_ify/features/home/presentation/cubit/home_cubit.dart';

class FavoritesActionBlocListener extends StatelessWidget {
  const FavoritesActionBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoritesAndThemeCubit, FavoritesAndThemeState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) {
        switch (state.status) {
          case FavoritesAndThemeStatus.preferProductSuccess:
          case FavoritesAndThemeStatus.removeProductFromFavsSuccess:
          case FavoritesAndThemeStatus.preferStoreSuccess:
          case FavoritesAndThemeStatus.removeStoreFromFavsSuccess:
            context.read<HomeCubit>().deleteCachedAndFetchHomeData();
            break;
          default:
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  bool _listenWhen(FavoritesAndThemeStatus status) {
    return status == FavoritesAndThemeStatus.preferProductSuccess ||
        status == FavoritesAndThemeStatus.removeProductFromFavsSuccess ||
        status == FavoritesAndThemeStatus.preferStoreSuccess ||
        status == FavoritesAndThemeStatus.removeStoreFromFavsSuccess;
  }
}
