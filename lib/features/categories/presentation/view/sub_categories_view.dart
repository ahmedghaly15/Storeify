import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_params.dart';
import 'package:store_ify/features/categories/data/models/navigate_to_sub_category_view_params.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_cubit.dart';

@RoutePage()
class SubCategoriesView extends StatelessWidget implements AutoRouteWrapper {
  const SubCategoriesView({super.key, required this.params});

  final NavigateToSubCategoryViewParams params;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SubCategoryCubit>(
      create: (_) => getIt.get<SubCategoryCubit>()
        ..fetchSubCategory(
          FetchSubCategoryParams(
            categoryId: params.categoryId,
            subCategoryId: params.subCategory.id,
          ),
        ),
      child: this,
    );
  }
}
