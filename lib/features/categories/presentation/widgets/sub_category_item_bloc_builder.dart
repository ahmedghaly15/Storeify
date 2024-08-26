import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_outlined_button.dart';
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
    return BlocBuilder<SubCategoryCubit, SubCategoryState>(
      buildWhen: (_, current) => current is UpdateCurrentSubCategoryIndex,
      builder: (context, state) {
        int currentSubCategory =
            context.read<SubCategoryCubit>().currentSubCategoryIndex;

        return CustomOutlinedButton(
          foregroundColor: _activeColor(currentSubCategory),
          borderColor: _activeColor(currentSubCategory),
          onPressed: () {
            _updateCurrentSubCategoryAndFetchIt(context);
          },
          child: Text(
            category.subCategories![index].name,
            style: AppTextStyles.textStyle10Medium.copyWith(
              color: _activeColor(currentSubCategory),
            ),
          ),
        );
      },
    );
  }

  Color _activeColor(int currentSubCategory) {
    return _isActive(currentSubCategory)
        ? AppColors.primaryColor
        : AppColors.blueColor;
  }

  bool _isActive(int currentSubCategory) =>
      currentSubCategory == category.subCategories![index].id;

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
