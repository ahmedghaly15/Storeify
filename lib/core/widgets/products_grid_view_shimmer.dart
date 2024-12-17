import 'package:flutter/material.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/shimmer_widget.dart';

class ProductsGridViewShimmer extends StatelessWidget {
  const ProductsGridViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: AppConstants.favProductsGridDelegate,
      padding: AppConstants.categoryPadding,
      itemCount: 10,
      itemBuilder: (_, __) => const ShimmerWidget(),
    );
  }
}
