import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/product_item.dart';
import 'package:store_ify/features/categories/presentation/widgets/category_item.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';
import 'package:store_ify/features/home/presentation/widgets/home_shimmer_loading.dart';
import 'package:store_ify/features/home/presentation/widgets/horizontal_separated_list_view.dart';
import 'package:store_ify/features/home/presentation/widgets/list_title.dart';
import 'package:store_ify/features/home/presentation/widgets/padded_title_and_view_all_text_button.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_item.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

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

class HomeDataWidget extends StatelessWidget {
  const HomeDataWidget({
    super.key,
    required this.homeData,
  });

  final FetchHomeResponse homeData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTitle(
            titleKey: LocaleKeys.bestSelling,
            bottomPadding: 25,
          ),
          SizedBox(
            height: 210.h,
            child: HorizontalSeparatedListView(
              itemBuilder: (_, index) => AspectRatio(
                aspectRatio: AppConstants.productItemAspectRatio,
                child: ProductItem(
                  product: homeData.bestSelling[index],
                ),
              ),
              itemCount: homeData.bestSelling.length,
            ),
          ),
          MySizedBox.height13,
          PaddedTitleAndViewAllTextButton(
            titleKey: LocaleKeys.categories,
            viewAllOnPressed: () => context.pushRoute(const CategoriesRoute()),
          ),
          SizedBox(
            height: 166.h,
            child: HorizontalSeparatedListView(
              itemBuilder: (_, index) => AspectRatio(
                aspectRatio: AppConstants.storeItemAspectRatio,
                child: CategoryItem(category: homeData.categories[index]),
              ),
              itemCount: homeData.categories.length,
            ),
          ),
          MySizedBox.height13,
          const ListTitle(
            titleKey: LocaleKeys.topStores,
            bottomPadding: 25,
          ),
          SizedBox(
            height: 175.h,
            child: HorizontalSeparatedListView(
              itemBuilder: (_, index) => AspectRatio(
                aspectRatio: AppConstants.storeItemAspectRatio,
                child: StoreItem(store: homeData.topStores[index]),
              ),
              itemCount: homeData.topStores.length,
            ),
          ),
        ],
      ),
    );
  }
}
