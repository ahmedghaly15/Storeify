import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_params.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_cubit.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_state.dart';

class SubCategoryItemBlocBuilder extends StatelessWidget {
  const SubCategoryItemBlocBuilder({
    super.key,
    required this.category,
    required this.index,
  });

  final Category category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SubCategoryCubit, SubCategoryState, int>(
      selector: (state) => state.selectedSubCategory,
      builder: (context, selectedSubCategory) {
        final isSelected =
            selectedSubCategory == category.subCategories![index].id;
        return MainButton(
          isOutlined: true,
          borderColor: _activeColor(isSelected),
          onPressed: () {
            _updateCurrentSubCategoryAndFetchIt(context);
          },
          child: Text(
            category.subCategories![index].name,
            style: AppTextStyles.textStyle10Medium.copyWith(
              color: _activeColor(isSelected),
            ),
          ),
        );
      },
    );
  }

  Color _activeColor(bool isSelected) {
    return isSelected ? AppColors.primaryColor : AppColors.blueColor;
  }

  void _updateCurrentSubCategoryAndFetchIt(BuildContext context) {
    context
        .read<SubCategoryCubit>()
        .updateCurrentSubCategoryIndex(category.subCategories![index].id);
    context.read<SubCategoryCubit>().fetchSubCategory(
          FetchSubCategoryParams(
            categoryId: category.id,
            subCategoryId: category.subCategories![index].id,
          ),
        );
  }
}
