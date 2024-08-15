import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
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
        final int currentSubCategory =
            context.read<SubCategoryCubit>().currentSubCategoryIndex + 1;

        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: _changeColor(currentSubCategory, index),
            backgroundColor: Colors.white,
            side: BorderSide(
              width: 1.w,
              color: currentSubCategory == category.subCategories![index].id
                  ? AppColors.primaryColor
                  : AppColors.blueColor,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(34.r),
            ),
          ),
          onPressed: () {
            _updateCurrentSubCategoryAndFetchIt(context);
          },
          child: Text(
            category.subCategories![index].name,
            style: AppTextStyles.textStyle10Medium.copyWith(
              color: _changeColor(currentSubCategory, index),
            ),
          ),
        );
      },
    );
  }

  void _updateCurrentSubCategoryAndFetchIt(BuildContext context) {
    context.read<SubCategoryCubit>().updateCurrentSubCategoryIndex(index);
    context.read<SubCategoryCubit>().fetchSubCategory(
          FetchSubCategoryParams(
            categoryId: category.id,
            subCategoryId: category.subCategories![index].id,
          ),
        );
  }

  Color _changeColor(int currentSubCategory, int index) {
    return currentSubCategory == category.subCategories![index].id
        ? AppColors.primaryColor
        : AppColors.blueColor;
  }
}
