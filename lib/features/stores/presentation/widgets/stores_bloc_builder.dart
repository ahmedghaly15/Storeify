import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_state.dart';
import 'package:store_ify/features/stores/presentation/widgets/category_stores_grid_view_bloc_builder.dart';
import 'package:store_ify/features/stores/presentation/widgets/stores_categories_list_view.dart';
import 'package:store_ify/features/stores/presentation/widgets/stores_shimmer_loading.dart';

class StoresBlocBuilder extends StatelessWidget {
  const StoresBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoresCubit, StoresState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case StoresStateStatus.fetchStoresLoading:
            return const StoresShimmerLoading();
          case StoresStateStatus.fetchStoresSuccess:
            return StoresBody(stores: state.stores!);
          case StoresStateStatus.fetchStoresError:
            return state.stores != null
                ? StoresBody(stores: state.stores!)
                : CustomErrorWidget(
                    tryAgainOnPressed: () =>
                        context.read<StoresCubit>().fetchStores(),
                    errorKey: state.error!,
                  );
          default:
            return const StoresShimmerLoading();
        }
      },
    );
  }

  bool _buildWhen(StoresStateStatus status) {
    return status == StoresStateStatus.fetchStoresLoading ||
        status == StoresStateStatus.fetchStoresSuccess ||
        status == StoresStateStatus.fetchStoresError;
  }
}

class StoresBody extends StatelessWidget {
  const StoresBody({
    super.key,
    required this.stores,
  });

  final FetchStoresResponse stores;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: AppConstants.categoryMargin,
          height: 25.h,
          child: StoreCategoriesListView(
            stores: stores.stores,
          ),
        ),
        CategoryStoresGridViewBlocBuilder(
          stores: stores.stores,
        ),
      ],
    );
  }
}
