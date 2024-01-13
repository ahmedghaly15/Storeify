import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/features/categories/data/models/categories_model.dart';
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
                final List<CategoryModel> categories =
                    BlocProvider.of<CategoryCubit>(context).categories;

                return SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    childCount: categories.length,
                    addAutomaticKeepAlives: true,
                    (context, index) => AnimationConfiguration.staggeredGrid(
                      position: index,
                      columnCount: categories.length,
                      duration: const Duration(milliseconds: 650),
                      child: ScaleAnimation(
                        child: FadeInAnimation(
                          child: CustomCategoryItem(
                            category: categories[index],
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
              },
            )
          ],
        ),
      ),
    );
  }
}
