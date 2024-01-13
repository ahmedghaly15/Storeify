import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.text,
    this.child,
    this.backgroundColor = AppColors.primaryColor,
    this.textColor,
  });

  final String? text;
  final Color backgroundColor;
  final Color? textColor;
  final void Function() onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0.h,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadiusDirectional.circular(10.0.r),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: text != null
            ? Text(
                text!,
                style: AppTextStyles.textStyle16Medium
                    .copyWith(color: textColor ?? Colors.white),
              )
            : child,
      ),
    );
  }
}
