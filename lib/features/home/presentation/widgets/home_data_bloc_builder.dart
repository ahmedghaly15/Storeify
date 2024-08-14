import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/home/presentation/cubit/home_cubit.dart';
import 'package:store_ify/features/home/presentation/cubit/home_state.dart';
import 'package:store_ify/features/home/presentation/widgets/best_selling_list_view.dart';
import 'package:store_ify/features/home/presentation/widgets/categories_list_view.dart';
import 'package:store_ify/features/home/presentation/widgets/list_title.dart';
import 'package:store_ify/features/home/presentation/widgets/padded_title_and_view_all_text_button.dart';
import 'package:store_ify/features/home/presentation/widgets/top_stores_list_view.dart';

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
        fetchHomeDataLoading: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
        fetchHomeDataError: (errorKey) =>
            Center(child: Text(context.translate(errorKey))),
        fetchHomeDataSuccess: (homeData) => Container(
          margin: EdgeInsetsDirectional.only(
            top: 40.h,
            bottom: 16.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTitle(
                titleKey: LangKeys.bestSelling,
                bottomPadding: 25,
              ),
              BestSellingListView(bestSelling: homeData.bestSelling),
              MySizedBox.height13,
              PaddedTitleAndViewAllTextButton(
                titleKey: LangKeys.categories,
                viewAllOnPressed: () {},
              ),
              CategoriesListView(categories: homeData.categories),
              MySizedBox.height13,
              PaddedTitleAndViewAllTextButton(
                titleKey: LangKeys.topStores,
                viewAllOnPressed: () {},
              ),
              TopStoresListView(topStores: homeData.topStores),
              // CategoriesListView(categories: homeData.categories),
            ],
          ),
        ),
        orElse: () {
          // TODO: show here error widget with error message: "Unknown error occurred"
          return const Center(
            child: CustomCircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
