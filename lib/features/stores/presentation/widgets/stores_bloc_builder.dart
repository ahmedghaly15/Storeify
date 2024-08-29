import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_state.dart';
import 'package:store_ify/features/stores/presentation/widgets/category_stores_grid_view_bloc_builder.dart';
import 'package:store_ify/features/stores/presentation/widgets/stores_categories_list_view.dart';

class StoresBlocBuilder extends StatelessWidget {
  const StoresBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoresCubit, StoresState>(
      buildWhen: (_, current) =>
          current is FetchStoresLoading ||
          current is FetchStoresSuccess ||
          current is FetchStoresError,
      builder: (context, state) => state.maybeWhen(
        fetchStoresLoading: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
        fetchStoresSuccess: (fetchStoresResponse) => Column(
          children: [
            Container(
              margin: AppConstants.categoryMargin,
              height: 25.h,
              child: StoreCategoriesListView(
                  fetchStoresResponse: fetchStoresResponse),
            ),
            CategoryStoresGridViewBlocBuilder(
              stores: fetchStoresResponse.stores,
            ),
          ],
        ),
        fetchStoresError: (errorKey) => CustomErrorWidget(
          tryAgainOnPressed: () => context.read<StoresCubit>().fetchStores(),
          errorKey: errorKey,
        ),
        orElse: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
      ),
    );
  }
}
