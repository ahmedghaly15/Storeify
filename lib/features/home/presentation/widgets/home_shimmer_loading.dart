import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/shimmer_widget.dart';
import 'package:store_ify/features/home/presentation/widgets/horizontal_separated_list_view.dart';

class HomeShimmerLoading extends StatelessWidget {
  const HomeShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        3,
        (_) => const ShimmerTitleAndListView(),
        growable: false,
      ),
    );
  }
}

class ShimmerTitleAndListView extends StatelessWidget {
  const ShimmerTitleAndListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerWidget(
            height: 24.h,
            width: 110.w,
            margin: EdgeInsetsDirectional.only(
              bottom: 25.h,
              start: 16.w,
              top: 8.h,
            ),
          ),
          SizedBox(
            height: 209.h,
            child: HorizontalSeparatedListView(
              itemBuilder: (_, __) => const AspectRatio(
                aspectRatio: AppConstants.productItemAspectRatio,
                child: ShimmerWidget(),
              ),
              itemCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}
