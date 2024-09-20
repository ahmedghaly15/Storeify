import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/shimmer_widget.dart';

class CategoriesGridViewShimmer extends StatelessWidget {
  const CategoriesGridViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: AppConstants.gridCrossAxisCount,
        crossAxisSpacing: AppConstants.gridCrossAxisSpacing,
        mainAxisSpacing: AppConstants.gridMainAxisSpacing,
      ),
      itemBuilder: (_, __) => ShimmerWidget(
        constraints: BoxConstraints(maxHeight: 165.h, maxWidth: 170.w),
      ),
    );
  }
}
