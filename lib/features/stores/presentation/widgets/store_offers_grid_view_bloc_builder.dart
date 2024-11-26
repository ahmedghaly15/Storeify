import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/product_item.dart';
import 'package:store_ify/core/widgets/products_grid_view_shimmer.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';

class StoreOffersGridViewBlocBuilder extends StatelessWidget {
  const StoreOffersGridViewBlocBuilder({super.key, required this.storeId});

  final int storeId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreDetailsCubit, StoreDetailsState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case StoreDetailsStateStatus.fetchStoreOffersLoading:
            return const ProductsGridViewShimmer();
          case StoreDetailsStateStatus.fetchStoreOffersSuccess:
            return StoreOffersGridView(storeOffers: state.storeOffers!);
          case StoreDetailsStateStatus.fetchStoreOffersError:
            return state.storeOffers != null
                ? StoreOffersGridView(storeOffers: state.storeOffers!)
                : CustomErrorWidget(
                    tryAgainOnPressed: () => context
                        .read<StoreDetailsCubit>()
                        .fetchStoreOffers(storeId),
                    errorKey: state.error!,
                  );
          default:
            return const ProductsGridViewShimmer();
        }
      },
    );
  }

  bool _buildWhen(StoreDetailsStateStatus status) {
    return status == StoreDetailsStateStatus.fetchStoreOffersLoading ||
        status == StoreDetailsStateStatus.fetchStoreOffersSuccess ||
        status == StoreDetailsStateStatus.fetchStoreOffersError;
  }
}

class StoreOffersGridView extends StatelessWidget {
  const StoreOffersGridView({super.key, required this.storeOffers});

  final FetchStoreOffersResponse storeOffers;

  @override
  Widget build(BuildContext context) {
    return storeOffers.products.isNotEmpty
        ? GridView.builder(
            itemCount: storeOffers.products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: AppConstants.gridCrossAxisCount,
              crossAxisSpacing: 32.w,
              mainAxisSpacing: 19.h,
            ),
            itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: storeOffers.products.length,
              duration: AppConstants.gridDuration,
              child: ScaleAnimation(
                child: FadeInAnimation(
                  child: ProductItem(
                    product: storeOffers.products[index],
                  ),
                ),
              ),
            ),
          )
        : const Center(
            child: Text('No Products'),
          );
  }
}
