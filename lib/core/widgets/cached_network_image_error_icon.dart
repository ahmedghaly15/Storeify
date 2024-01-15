import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/config/themes/app_colors.dart';

class CachedNetworkImageErrorIcon extends StatelessWidget {
  const CachedNetworkImageErrorIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.error,
      size: 22.h,
      color: AppColors.primaryColor,
    );
  }
}
