import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/features/categories/data/datasources/categories_local_datasource.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories/categories_cubit.dart';
import 'package:store_ify/features/categories/presentation/widgets/categories_bloc_builder.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

@RoutePage()
class CategoriesView extends StatelessWidget implements AutoRouteWrapper {
  const CategoriesView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CategoriesCubit>(
      create: (_) => getIt.get<CategoriesCubit>()..fetchCategories(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          await CategoriesLocalDatasource.deleteCachedCategories();
          await context.read<CategoriesCubit>().fetchCategories();
        },
        child: const SafeArea(
          child: CustomScrollView(
            physics: AppConstants.physics,
            slivers: [
              CustomSliverAppBar(titleKey: LocaleKeys.categories),
              CategoriesBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
