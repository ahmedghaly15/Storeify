import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/favorites/data/datasources/favorites_local_datasource.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_cubit.dart';
import 'package:store_ify/features/stores/data/models/store.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_item.dart';

class FavoriteStoresGridView extends StatelessWidget {
  const FavoriteStoresGridView({
    super.key,
    required this.stores,
  });

  final List<Store> stores;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () async {
        await FavoritesLocalDatasource.deleteCachedFavStores();
        await context.read<FetchFavoritesCubit>().fetchFavStores();
      },
      child: GridView.builder(
        itemCount: stores.length,
        padding: AppConstants.categoryPadding,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: AppConstants.gridCrossAxisCount,
          crossAxisSpacing: 15.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: AppConstants.storeItemAspectRatio,
        ),
        itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
          position: index,
          columnCount: stores.length,
          duration: AppConstants.gridDuration,
          child: ScaleAnimation(
            child: StoreItem(store: stores[index]),
          ),
        ),
      ),
    );
  }
}
