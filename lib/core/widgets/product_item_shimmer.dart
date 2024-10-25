import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/shimmer_widget.dart';

class ProductItemShimmer extends StatelessWidget {
  const ProductItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerWidget(
      constraints: BoxConstraints(
        maxWidth: 145.w,
        maxHeight: 209.h,
      ),
    );
  }
}
