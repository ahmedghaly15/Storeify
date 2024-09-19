import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/widgets/stores_bloc_builder.dart';

@RoutePage()
class StoresView extends StatelessWidget implements AutoRouteWrapper {
  const StoresView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<StoresCubit>(
      create: (_) => getIt.get<StoresCubit>()..fetchStores(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              titleKey: LangKeys.stores,
              hasLeading: false,
            ),
            SliverFillRemaining(
              child: StoresBlocBuilder(),
            )
          ],
        ),
      ),
    );
  }
}
