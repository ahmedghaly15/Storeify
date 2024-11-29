import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/product_item.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_cubit.dart';

class FavoriteProductsGridView extends StatelessWidget {
  const FavoriteProductsGridView({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () async =>
          await context.read<FetchFavoritesCubit>().fetchFavProducts(),
      child: GridView.builder(
        itemCount: products.length,
        physics: AppConstants.physics,
        padding: AppConstants.categoryPadding,
        gridDelegate: AppConstants.favProductsGridDelegate,
        itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
          position: index,
          columnCount: products.length,
          duration: AppConstants.gridDuration,
          child: ScaleAnimation(
            child: ProductItem(product: products[index]),
          ),
        ),
      ),
    );
  }
}
