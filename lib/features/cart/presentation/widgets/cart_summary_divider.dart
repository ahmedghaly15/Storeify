import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';

class CartSummaryDivider extends StatelessWidget {
  const CartSummaryDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.colorBEBEC3,
      thickness: 0.5.w,
      height: 1.h,
    );
  }
}
