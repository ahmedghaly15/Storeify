import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/home/presentation/cubit/home_cubit.dart';
import 'package:store_ify/features/home/presentation/widgets/home_data_bloc_builder.dart';
import 'package:store_ify/features/home/presentation/widgets/user_info_and_search_field.dart';

@RoutePage()
class HomeView extends StatelessWidget implements AutoRouteWrapper {
  const HomeView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => getIt.get<HomeCubit>()
        ..fetchHomeData()
        ..requestLocationPermission(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: AppConstants.physics,
        slivers: [
          SliverPadding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
            sliver: const SliverToBoxAdapter(
              child: UserInfoAndSearchField(),
            ),
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: HomeDataBlocBuilder(),
          ),
        ],
      ),
    );
  }
}
