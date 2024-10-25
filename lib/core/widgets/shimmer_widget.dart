import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:store_ify/core/helpers/extensions.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    this.height,
    this.width,
    this.circularRadiusVal = 10,
    this.margin,
    this.padding,
    this.borderRadius,
    this.shape,
    this.constraints,
  });

  final double? height, width, circularRadiusVal;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? margin, padding;
  final BoxShape? shape;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.isDarkModeActive
          ? Colors.grey.shade700.withOpacity(0.6)
          : Colors.grey.shade300,
      highlightColor: context.isDarkModeActive
          ? Colors.grey.shade800.withOpacity(0.3)
          : Colors.grey.shade100,
      child: Container(
        height: height,
        width: width,
        constraints: constraints,
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: shape == null
              ? borderRadius ?? BorderRadius.circular(circularRadiusVal!.r)
              : null,
          shape: shape ?? BoxShape.rectangle,
        ),
      ),
    );
  }
}
