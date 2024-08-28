import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/stores/data/models/store.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_state.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_item.dart';

class CategoryStoresGridViewBlocBuilder extends StatelessWidget {
  const CategoryStoresGridViewBlocBuilder({super.key, required this.stores});

  final List<Store> stores;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoresCubit, StoresState>(
      buildWhen: (_, current) => current is UpdateCurrentStoreIndex,
      builder: (context, state) => Expanded(
        child: GridView.builder(
          padding: AppConstants.categoryPadding,
          itemCount: stores[context.read<StoresCubit>().currentStoreIndex]
              .categories!
              .length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: AppConstants.gridCrossAxisCount,
            crossAxisSpacing: 8.w,
            mainAxisSpacing: 16.h,
          ),
          itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
            position: index,
            columnCount: stores[context.read<StoresCubit>().currentStoreIndex]
                .categories!
                .length,
            duration: AppConstants.gridDuration,
            child: ScaleAnimation(
              child: StoreItem(store: stores[index]),
            ),
          ),
        ),
      ),
    );
  }
}
