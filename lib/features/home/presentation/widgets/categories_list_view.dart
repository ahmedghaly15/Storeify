import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/try_again_button.dart';
import 'package:store_ify/features/categories/presentation/widgets/category_item.dart';
import 'package:store_ify/features/categories/presentation/cubit/category_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/widgets/button_loading_indicator.dart';
import 'package:store_ify/features/home/presentation/widgets/custom_horizontal_list.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is GetCategoriesSuccess) {
          return SizedBox(
            height: 166.h,
            child: CustomHorizontalList(
              itemBuilder: (context, index) {
                return CategoryItem(
                  category: state.categories[index],
                );
              },
            ),
          );
        } else if (state is GetCategoriesError) {
          return TryAgainButton(
            onPressed: () {
              BlocProvider.of<CategoryCubit>(context).getCategories();
            },
          );
        } else {
          return const ButtonLoadingIndicator();
        }
      },
    );
  }
}
