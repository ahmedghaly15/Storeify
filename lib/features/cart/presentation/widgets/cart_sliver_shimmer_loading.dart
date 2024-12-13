import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/shimmer_widget.dart';

class CartSliverShimmerLoading extends StatelessWidget {
  const CartSliverShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 6,
      itemBuilder: (_, __) => ShimmerWidget(
        margin: AppConstants.cartItemMargin,
        constraints: BoxConstraints(
          maxHeight: 110.h,
          maxWidth: double.infinity,
        ),
      ),
    );
  }
}
