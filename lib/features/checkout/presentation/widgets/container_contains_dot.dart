import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';

class ContainerContainsDot extends StatelessWidget {
  const ContainerContainsDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.47.h),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.isDarkModeActive ? Colors.transparent : Colors.white,
        border: Border.all(
          color: AppColors.colorD9D9D9,
          width: 1.08.w,
        ),
      ),
      child: CircleAvatar(
        radius: 6.5.r,
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
