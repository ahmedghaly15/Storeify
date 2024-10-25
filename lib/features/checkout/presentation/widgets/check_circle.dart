import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';

class CheckCircle extends StatelessWidget {
  const CheckCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.48.h,
      width: 20.48.h,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor,
      ),
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 16.w,
      ),
    );
  }
}
