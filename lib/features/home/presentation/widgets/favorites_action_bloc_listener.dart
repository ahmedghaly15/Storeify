import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';

class FavoritesActionBlocListener extends StatelessWidget {
  const FavoritesActionBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GeneralCubit, GeneralState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) {
        switch (state.status) {
          case GeneralStateStatus.preferProductSuccess:
          case GeneralStateStatus.removeProductFromFavsSuccess:
          case GeneralStateStatus.preferStoreSuccess:
          case GeneralStateStatus.removeStoreFromFavsSuccess:
            context.read<GeneralCubit>().deleteCachedAndFetchHomeData();
            break;
          default:
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  bool _listenWhen(GeneralStateStatus status) {
    return status == GeneralStateStatus.preferProductSuccess ||
        status == GeneralStateStatus.removeProductFromFavsSuccess ||
        status == GeneralStateStatus.preferStoreSuccess ||
        status == GeneralStateStatus.removeStoreFromFavsSuccess;
  }
}
