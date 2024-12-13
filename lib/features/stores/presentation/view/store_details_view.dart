import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/stores/data/models/store.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_details_categories_list_view.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_details_data.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_image_and_name.dart';

@RoutePage()
class StoreDetailsView extends StatelessWidget implements AutoRouteWrapper {
  const StoreDetailsView({super.key, required this.store});

  final Store store;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<StoreDetailsCubit>(
      create: (_) => getIt.get<StoreDetailsCubit>()..fetchStoreOffers(store.id),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(),
            SliverToBoxAdapter(
              child: StoreImageAndName(store: store),
            ),
            SliverToBoxAdapter(
              child: StoreDetailsCategoriesListView(storeId: store.id),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
              sliver: SliverFillRemaining(
                child: StoreDetailsData(storeId: store.id),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
