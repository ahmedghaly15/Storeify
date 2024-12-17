import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_params.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_cubit.dart';
import 'package:store_ify/features/categories/presentation/widgets/empty_sub_category_view.dart';
import 'package:store_ify/features/categories/presentation/widgets/sub_categories_list_view.dart';
import 'package:store_ify/features/categories/presentation/widgets/sub_category_products_sliver_grid_bloc_builder.dart';

@RoutePage()
class SubCategoriesView extends StatelessWidget implements AutoRouteWrapper {
  const SubCategoriesView({super.key, required this.category});

  final Category category;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SubCategoryCubit>(
      create: (_) => category.subCategories!.isNotEmpty
          ? (getIt.get<SubCategoryCubit>()
            ..selectSubCategory(category.subCategories![0])
            ..fetchSubCategory(
              FetchSubCategoryParams(
                categoryId: category.id,
                subCategoryId: category.subCategories![0].id,
              ),
            ))
          : getIt.get<SubCategoryCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: category.subCategories!.isNotEmpty
            ? RefreshIndicator.adaptive(
                onRefresh: () async =>
                    await context.read<SubCategoryCubit>().fetchSubCategory(
                          FetchSubCategoryParams(
                            categoryId: category.id,
                            subCategoryId: context
                                .read<SubCategoryCubit>()
                                .selectedSubCategory
                                .id,
                          ),
                        ),
                child: CustomScrollView(
                  slivers: [
                    CustomSliverAppBar(titleText: category.name),
                    SliverToBoxAdapter(
                      child: SubCategoriesListView(category: category),
                    ),
                    SubCategoryProductsSliverGridBlocBuilder(
                      categoryId: category.id,
                    ),
                  ],
                ),
              )
            : EmptySubCategoryView(appBarTitleText: category.name),
      ),
    );
  }
}
