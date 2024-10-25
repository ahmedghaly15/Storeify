import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/shimmer_widget.dart';

class StoreBranchesListShimmer extends StatelessWidget {
  const StoreBranchesListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppConstants.categoryPadding,
      itemBuilder: (_, index) => Container(
        decoration: AppConstants.storeBranchItemDecoration(context),
        padding: AppConstants.storeBranchItemPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerWidget(
              circularRadiusVal: 0,
              height: 10.h,
              width: MediaQuery.sizeOf(context).width * 0.45,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4.h),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (_, __) => ShimmerWidget(
                  circularRadiusVal: 0,
                  height: 10.h,
                  width: double.infinity,
                ),
                separatorBuilder: (_, __) => MySizedBox.height4,
              ),
            ),
            ShimmerWidget(
              circularRadiusVal: 0,
              height: 10.h,
              width: MediaQuery.sizeOf(context).width * 0.3,
            ),
          ],
        ),
      ),
      separatorBuilder: (_, __) => MySizedBox.height16,
      itemCount: 6,
    );
  }
}
