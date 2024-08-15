import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories/categories_cubit.dart';
import 'package:store_ify/features/categories/presentation/widgets/categories_bloc_builder.dart';

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
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: AppConstants.physics,
          slivers: [
            CustomSliverAppBar(titleKey: LangKeys.categories),
            CategoriesBlocBuilder()
          ],
        ),
      ),
    );
  }
}
