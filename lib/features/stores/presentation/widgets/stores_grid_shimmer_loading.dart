import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/shimmer_widget.dart';
import 'package:store_ify/features/home/presentation/widgets/horizontal_separated_list_view.dart';

class StoresGridShimmerLoading extends StatelessWidget {
  const StoresGridShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 25.h,
          margin: AppConstants.categoryMargin,
          child: HorizontalSeparatedListView(
            padding: AppConstants.categoryPadding,
            separatorWidget: MySizedBox.width8,
            itemBuilder: (_, __) => ShimmerWidget(
              height: 25.h,
              width: 75.w,
              circularRadiusVal: 35,
            ),
            itemCount: 5,
          ),
        ),
        Expanded(
          child: GridView.builder(
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
          ),
        ),
        MySizedBox.height16,
      ],
    );
  }
}
