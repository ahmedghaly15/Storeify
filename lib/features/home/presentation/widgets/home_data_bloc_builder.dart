import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';
import 'package:store_ify/features/home/presentation/widgets/home_data_widget.dart';
import 'package:store_ify/features/home/presentation/widgets/home_shimmer_loading.dart';

class HomeDataBlocBuilder extends StatelessWidget {
  const HomeDataBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralCubit, GeneralState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case GeneralStateStatus.fetchHomeDataLoading:
            return const HomeShimmerLoading();
          case GeneralStateStatus.fetchHomeDataError:
            return state.homeData != null
                ? HomeDataWidget(homeData: state.homeData!)
                : CustomErrorWidget(
                    tryAgainOnPressed: () =>
                        context.read<GeneralCubit>().fetchHomeData(),
                    errorKey: state.error!,
                  );
          case GeneralStateStatus.fetchHomeDataSuccess:
            return HomeDataWidget(homeData: state.homeData!);
          default:
            return const HomeShimmerLoading();
        }
      },
    );
  }

  bool _buildWhen(GeneralStateStatus status) {
    return status == GeneralStateStatus.fetchHomeDataLoading ||
        status == GeneralStateStatus.fetchHomeDataSuccess ||
        status == GeneralStateStatus.fetchHomeDataError;
  }
}
