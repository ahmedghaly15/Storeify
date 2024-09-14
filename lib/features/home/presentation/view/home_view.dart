import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/home/presentation/cubit/home_cubit.dart';
import 'package:store_ify/features/home/presentation/widgets/home_data_bloc_builder.dart';
import 'package:store_ify/features/home/presentation/widgets/show_location_dialog_bloc_listener.dart';
import 'package:store_ify/features/home/presentation/widgets/user_info_and_search_field.dart';

@RoutePage()
class HomeView extends StatelessWidget implements AutoRouteWrapper {
  const HomeView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => getIt.get<HomeCubit>()..fetchHomeData(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: AppConstants.physics,
        slivers: [
          CustomSliverAppBar(
            hasLeading: false,
            actions: [
              IconButton(
                onPressed: () => context.pushRoute(const ProfileRoute()),
                icon: const Icon(
                  AppConstants.personIcon,
                  color: AppColors.greyColor,
                ),
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: ShowLocationDialogBlocListener(),
          ),
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
