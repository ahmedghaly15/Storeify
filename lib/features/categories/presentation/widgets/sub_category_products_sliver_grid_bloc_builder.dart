import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_params.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_cubit.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_state.dart';
import 'package:store_ify/features/categories/presentation/widgets/sub_category_products_sliver_grid.dart';

class SubCategoryProductsSliverGridBlocBuilder extends StatelessWidget {
  const SubCategoryProductsSliverGridBlocBuilder({
    super.key,
    required this.categoryId,
  });

  final int categoryId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoryCubit, SubCategoryState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case SubCategoryStateStatus.fetchSubCategoryLoading:
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: CustomCircularProgressIndicator(),
              ),
            );
          case SubCategoryStateStatus.fetchSubCategoryError:
            return state.subCategory != null
                ? SliverPadding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
                    sliver: SubCategoryProductsSliverGrid(
                        subCategory: state.subCategory!),
                  )
                : SliverFillRemaining(
                    hasScrollBody: false,
                    child: CustomErrorWidget(
                      errorKey: state.error!,
                      tryAgainOnPressed: () {
                        context.read<SubCategoryCubit>().fetchSubCategory(
                              FetchSubCategoryParams(
                                categoryId: categoryId,
                                subCategoryId: state.selectedSubCategory,
                              ),
                            );
                      },
                    ),
                  );
          case SubCategoryStateStatus.fetchSubCategorySuccess:
            debugPrint(
                'SubCategory fetched with ${state.subCategory!.products.length} products');
            return SliverPadding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
              sliver: SubCategoryProductsSliverGrid(
                  subCategory: state.subCategory!),
            );
          default:
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: CustomCircularProgressIndicator(),
              ),
            );
        }
      },
    );
  }

  bool _buildWhen(SubCategoryStateStatus status) {
    return status == SubCategoryStateStatus.fetchSubCategoryLoading ||
        status == SubCategoryStateStatus.fetchSubCategoryError ||
        status == SubCategoryStateStatus.fetchSubCategorySuccess;
  }
}