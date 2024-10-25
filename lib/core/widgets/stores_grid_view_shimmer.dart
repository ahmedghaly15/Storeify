import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/shimmer_widget.dart';

class StoresGridViewShimmer extends StatelessWidget {
  const StoresGridViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      padding: AppConstants.categoryPadding,
      physics: AppConstants.physics,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: AppConstants.gridCrossAxisCount,
        crossAxisSpacing: 8.w,
        mainAxisSpacing: 16.h,
      ),
      itemBuilder: (_, __) => ShimmerWidget(
        constraints: BoxConstraints(maxHeight: 165.h, maxWidth: 170.w),
      ),
    );
  }
}
