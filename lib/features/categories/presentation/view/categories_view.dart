import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/features/categories/presentation/cubit/category_cubit.dart';
import 'package:store_ify/features/categories/presentation/widgets/custom_category_item.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: AppConstants.physics,
          slivers: [
            const CustomSliverAppBar(title: 'Categories'),
            BlocBuilder<CategoryCubit, CategoryState>(
              builder: (context, state) {
                if (state is GetCategoriesError) {
                  return SliverFillRemaining(
                    child: CustomErrorWidget(
                      onPressed: () {},
                      error: state.error,
                    ),
                  );
                } else if (state is GetCategoriesSuccess) {
                  return SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      childCount: state.categories.length,
                      (context, index) => AnimationConfiguration.staggeredGrid(
                        position: index,
                        columnCount: state.categories.length,
                        duration: const Duration(milliseconds: 650),
                        child: ScaleAnimation(
                          child: FadeInAnimation(
                            child: CustomCategoryItem(
                              category: state.categories[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.w,
                    ),
                  );
                } else {
                  return const CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
