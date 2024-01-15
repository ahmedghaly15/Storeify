import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/config/router/routes.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/features/home/presentation/widgets/best_seller_list_view.dart';
import 'package:store_ify/features/home/presentation/widgets/categories_list_view.dart';
import 'package:store_ify/features/home/presentation/widgets/list_title.dart';
import 'package:store_ify/features/home/presentation/widgets/user_info_and_search_field.dart';
import 'package:store_ify/features/home/presentation/widgets/stores_sliver_grid_view.dart';
import 'package:store_ify/features/home/presentation/widgets/view_all_text_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: AppConstants.physics,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            sliver: const SliverToBoxAdapter(
              child: UserInfoAndSearchField(),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                const ListTitle(
                  title: 'Best Selling',
                  bottomPadding: 25,
                ),
                const BestSellerListView(),
                SizedBox(height: 14.h),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ListTitle(title: 'Categories'),
                      ViewAllTextButton(
                        onPressed: () => context.navigateTo(
                          routeName: Routes.categoriesViewRoute,
                        ),
                      ),
                    ],
                  ),
                ),
                const CategoriesListView(),
                SizedBox(height: 14.h),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ListTitle(title: 'Top Stores'),
                      ViewAllTextButton(
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const StoresSliverGridView(),
        ],
      ),
    );
  }
}
