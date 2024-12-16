import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';
import 'package:store_ify/features/home/data/datasources/home_local_datasource.dart';

class FavoritesActionBlocListener extends StatelessWidget {
  const FavoritesActionBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GeneralCubit, GeneralState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) async {
        switch (state.status) {
          case GeneralStateStatus.preferProductSuccess:
          case GeneralStateStatus.removeProductFromFavsSuccess:
          case GeneralStateStatus.preferStoreSuccess:
          case GeneralStateStatus.removeStoreFromFavsSuccess:
            await HomeLocalDatasource.deleteHomeCachedResponse();
            await context.read<GeneralCubit>().fetchHomeData();
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
