import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/home/presentation/cubit/home_cubit.dart';
import 'package:store_ify/features/home/presentation/cubit/home_state.dart';
import 'package:store_ify/features/home/presentation/widgets/best_selling_list_view.dart';
import 'package:store_ify/features/home/presentation/widgets/categories_list_view.dart';
import 'package:store_ify/features/home/presentation/widgets/home_shimmer_loading.dart';
import 'package:store_ify/features/home/presentation/widgets/list_title.dart';
import 'package:store_ify/features/home/presentation/widgets/padded_title_and_view_all_text_button.dart';
import 'package:store_ify/features/home/presentation/widgets/top_stores_list_view.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class HomeDataBlocBuilder extends StatelessWidget {
  const HomeDataBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (_, current) =>
          current is FetchHomeDataLoading ||
          current is FetchHomeDataSuccess ||
          current is FetchHomeDataError,
      builder: (context, state) => state.maybeWhen(
        fetchHomeDataLoading: () => const HomeShimmerLoading(),
        fetchHomeDataError: (errorKey) => CustomErrorWidget(
          tryAgainOnPressed: () => context.read<HomeCubit>().fetchHomeData(),
          errorKey: errorKey,
        ),
        fetchHomeDataSuccess: (homeData) => Container(
          margin: EdgeInsetsDirectional.only(bottom: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTitle(
                titleKey: LocaleKeys.bestSelling,
                bottomPadding: 25,
              ),
              BestSellingListView(bestSelling: homeData.bestSelling),
              MySizedBox.height13,
              PaddedTitleAndViewAllTextButton(
                titleKey: LocaleKeys.categories,
                viewAllOnPressed: () =>
                    context.pushRoute(const CategoriesRoute()),
              ),
              CategoriesListView(categories: homeData.categories),
              MySizedBox.height13,
              PaddedTitleAndViewAllTextButton(
                titleKey: LocaleKeys.topStores,
                viewAllOnPressed: () {},
              ),
              TopStoresListView(topStores: homeData.topStores),
            ],
          ),
        ),
        orElse: () => CustomErrorWidget(
          tryAgainOnPressed: () => context.read<HomeCubit>().fetchHomeData(),
          errorKey: LocaleKeys.defaultError,
        ),
      ),
    );
  }
}
