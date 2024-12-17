import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/empty_widget.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories/categories_cubit.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories/categories_state.dart';
import 'package:store_ify/features/categories/presentation/widgets/categories_sliver_grid.dart';
import 'package:store_ify/features/categories/presentation/widgets/categories_sliver_shimmer_loading.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (_, state) {
        switch (state.status) {
          case CategoriesStateStatus.fetchCategoriesLoading:
            return const CategoriesSliverShimmerLoading();
          case CategoriesStateStatus.fetchCategoriesError:
            return state.categoriesResponse != null
                ? (state.categoriesResponse!.categories.isNotEmpty
                    ? SliverPadding(
                        padding: AppConstants.categoriesGridPadding,
                        sliver: CategoriesSliverGrid(
                          fetchCategoriesResponse: state.categoriesResponse!,
                        ),
                      )
                    : const SliverFillRemaining(
                        hasScrollBody: false,
                        child: EmptyWidget(
                          titleKey: LocaleKeys.emptyCategories,
                        ),
                      ))
                : SliverFillRemaining(
                    child: CustomErrorWidget(
                      tryAgainOnPressed: () =>
                          context.read<CategoriesCubit>().fetchCategories(),
                      errorKey: state.error!,
                    ),
                  );
          case CategoriesStateStatus.fetchCategoriesSuccess:
            return state.categoriesResponse!.categories.isNotEmpty
                ? SliverPadding(
                    padding: AppConstants.categoriesGridPadding,
                    sliver: CategoriesSliverGrid(
                      fetchCategoriesResponse: state.categoriesResponse!,
                    ),
                  )
                : const SliverFillRemaining(
                    hasScrollBody: false,
                    child: EmptyWidget(titleKey: LocaleKeys.emptyCategories),
                  );
          default:
            return const CategoriesSliverShimmerLoading();
        }
      },
    );
  }

  bool _buildWhen(CategoriesStateStatus status) {
    return status == CategoriesStateStatus.fetchCategoriesLoading ||
        status == CategoriesStateStatus.fetchCategoriesSuccess ||
        status == CategoriesStateStatus.fetchCategoriesError;
  }
}
