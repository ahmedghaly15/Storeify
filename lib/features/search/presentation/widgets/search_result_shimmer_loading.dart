import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/shimmer_widget.dart';

class SearchResultShimmerLoading extends StatelessWidget {
  const SearchResultShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: AppConstants.gridCrossAxisCount,
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.h,
          childAspectRatio: AppConstants.productItemAspectRatio,
        ),
        itemCount: 6,
        itemBuilder: (_, __) => const ShimmerWidget(),
      ),
    );
  }
}
