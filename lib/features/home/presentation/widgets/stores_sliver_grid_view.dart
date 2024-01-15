import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/button_loading_indicator.dart';
import 'package:store_ify/core/widgets/try_again_button.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/widgets/custom_stores_item.dart';

class StoresSliverGridView extends StatelessWidget {
  const StoresSliverGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoresCubit, StoresState>(
      builder: (context, state) {
        if (state is GetStoresSuccess) {
          return SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: state.stores.length,
              addAutomaticKeepAlives: true,
              (context, index) => AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: state.stores.length,
                duration: const Duration(milliseconds: 650),
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: CustomStoresItem(
                      store: state.stores[index],
                    ),
                  ),
                ),
              ),
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: AppConstants.gridCrossAxisCount,
              crossAxisSpacing: AppConstants.gridCrossAxisSpacing,
              mainAxisSpacing: AppConstants.gridMainAxisSpacing,
            ),
          );
        }
        if (state is GetStoresError) {
          return SliverToBoxAdapter(
            child: TryAgainButton(
              onPressed: () =>
                  BlocProvider.of<StoresCubit>(context).getStores(),
            ),
          );
        } else {
          return const SliverToBoxAdapter(child: ButtonLoadingIndicator());
        }
      },
    );
  }
}
