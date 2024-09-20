import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/product_item.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';

class StoreOffersGridViewBlocBuilder extends StatelessWidget {
  const StoreOffersGridViewBlocBuilder({super.key, required this.storeId});

  final int storeId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreDetailsCubit, StoreDetailsState>(
      buildWhen: (_, current) =>
          current is FetchStoreOffersLoading ||
          current is FetchStoreOffersSuccess ||
          current is FetchStoreOffersError,
      builder: (context, state) => state.maybeWhen(
        fetchStoreOffersLoading: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
        fetchStoreOffersSuccess: (result) => result.products.isNotEmpty
            ? GridView.builder(
                itemCount: result.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: AppConstants.gridCrossAxisCount,
                  crossAxisSpacing: 32.w,
                  mainAxisSpacing: 19.h,
                ),
                itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
                  position: index,
                  columnCount: result.products.length,
                  duration: AppConstants.gridDuration,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: ProductItem(
                        product: result.products[index],
                      ),
                    ),
                  ),
                ),
              )
            : const Center(
                child: Text('No Products'),
              ),
        fetchStoreOffersError: (errorKey) => CustomErrorWidget(
          tryAgainOnPressed: () {
            context.read<StoreDetailsCubit>().fetchStoreOffers(storeId);
          },
          errorKey: errorKey,
        ),
        orElse: () => CustomErrorWidget(
          tryAgainOnPressed: () {
            context.read<StoreDetailsCubit>().fetchStoreOffers(storeId);
          },
          errorKey: LangKeys.defaultError,
        ),
      ),
    );
  }
}
