import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';

class ControlCartProductQuantity extends StatelessWidget {
  const ControlCartProductQuantity({
    super.key,
    required this.icon,
    required this.onTap,
    this.borderRadius,
  });

  final BorderRadiusGeometry? borderRadius;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.h),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: AppColors.primaryColor,
      ),
      child: InkWell(
        onTap: onTap,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
