import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.textKey,
    this.child,
    required this.onPressed,
    this.borderRadius,
    this.textStyle,
    this.backgroundColor,
    this.textColor,
    this.boxShadow,
    this.width,
    this.height,
    this.padding,
    this.border,
    this.isOutlined = false,
    this.fontSize,
  });

  final String? textKey;
  final Widget? child;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onPressed;
  final List<BoxShadow>? boxShadow;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;
  final bool isOutlined;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?.w ?? double.infinity,
      height: height?.h ?? 42.0.h,
      decoration: BoxDecoration(
        color: isOutlined
            ? Colors.white
            : backgroundColor ?? AppColors.primaryColor,
        borderRadius: BorderRadiusDirectional.circular(
          borderRadius ?? 10.0.r,
        ),
        boxShadow: boxShadow,
        border: isOutlined
            ? Border.all(
                color: AppColors.primaryColor,
                width: 1.w,
              )
            : border,
      ),
      child: MaterialButton(
        padding: padding,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(
            borderRadius ?? 10.0.r,
          ),
        ),
        child: child ??
            FittedBox(
              child: Text(
                context.translate(textKey!),
                style: textStyle ??
                    AppTextStyles.mainButtonTextStyle.copyWith(
                      fontSize: fontSize?.sp ?? 16.sp,
                      color: isOutlined
                          ? AppColors.primaryColor
                          : textColor ?? Colors.white,
                    ),
              ),
            ),
      ),
    );
  }
}
