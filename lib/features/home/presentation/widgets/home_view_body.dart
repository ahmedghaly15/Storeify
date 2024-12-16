import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/home/data/datasources/home_local_datasource.dart';
import 'package:store_ify/features/home/presentation/widgets/custom_hero_search_text_field.dart';
import 'package:store_ify/features/home/presentation/widgets/enable_location_permission_adaptive_dialog.dart';
import 'package:store_ify/features/home/presentation/widgets/favorites_action_bloc_listener.dart';
import 'package:store_ify/features/home/presentation/widgets/home_data_bloc_builder.dart';
import 'package:store_ify/features/home/presentation/widgets/home_custom_app_bar.dart';

@RoutePage()
class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<GeneralCubit>().fetchHomeData();
    _showLocationPermissionDialog();
  }

  Future<void> _showLocationPermissionDialog() async {
    if (await LocationService.isLocationPermissionDenied()) {
      showAdaptiveDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel: '',
        builder: (_) => const EnableLocationPermissionAdaptiveDialog(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator.adaptive(
        onRefresh: () async {
          await HomeLocalDatasource.deleteHomeCachedResponse();
          await context.read<GeneralCubit>().fetchHomeData();
        },
        child: const CustomScrollView(
          physics: AppConstants.physics,
          slivers: [
            SliverToBoxAdapter(
              child: HomeCustomAppBar(),
            ),
            SliverToBoxAdapter(
              child: CustomHeroSearchTextField(),
            ),
            SliverToBoxAdapter(
              child: FavoritesActionBlocListener(),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: HomeDataBlocBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
