import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
    this.color = AppColors.primaryColor,
    this.strokeWidth = 4,
    this.backgroundColor,
  });

  final Color color;
  final Color? backgroundColor;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator.adaptive(
      valueColor: AlwaysStoppedAnimation<Color>(color),
      strokeCap: StrokeCap.butt,
      strokeWidth: strokeWidth.w,
      backgroundColor: backgroundColor,
    );
  }
}
