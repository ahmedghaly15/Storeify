import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.foregroundColor,
    this.borderColor,
  });

  final Widget child;
  final void Function()? onPressed;
  final Color? foregroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: Colors.white,
        side: BorderSide(
          width: 1.w,
          color: borderColor ?? AppColors.primaryColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34.r),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
