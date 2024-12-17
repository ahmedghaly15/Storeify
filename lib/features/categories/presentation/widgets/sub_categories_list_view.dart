import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/models/sub_category.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/list_outlined_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_params.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_cubit.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_state.dart';
import 'package:store_ify/core/widgets/horizontal_separated_list_view.dart';

class SubCategoriesListView extends StatelessWidget {
  const SubCategoriesListView({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.categoryMargin,
      height: AppConstants.horizontalTapsListHeight,
      child: HorizontalSeparatedListView(
        padding: AppConstants.categoryPadding,
        itemCount: category.subCategories!.length,
        itemBuilder: (_, index) =>
            BlocSelector<SubCategoryCubit, SubCategoryState, SubCategory?>(
          selector: (state) =>
              state.selectedSubCategory ?? category.subCategories![index],
          builder: (context, selectedSubCategory) {
            final isSelected =
                selectedSubCategory == category.subCategories![index];
            return ListOutlinedButton(
              isActive: isSelected,
              onPressed: () {
                if (!isSelected) {
                  _updateCurrentSubCategoryAndFetchIt(
                    context,
                    category.subCategories![index],
                  );
                }
              },
              text: category.subCategories![index].name,
            );
          },
        ),
        separatorWidget: MySizedBox.width8,
      ),
    );
  }

  void _updateCurrentSubCategoryAndFetchIt(
    BuildContext context,
    SubCategory subCategory,
  ) {
    context.read<SubCategoryCubit>().selectSubCategory(subCategory);
    context.read<SubCategoryCubit>().fetchSubCategory(
          FetchSubCategoryParams(
            categoryId: category.id,
            subCategoryId: subCategory.id,
          ),
        );
  }
}
