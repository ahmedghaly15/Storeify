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
    this.margin,
    this.borderColor = AppColors.primaryColor,
    this.borderWidth = 1,
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
  final EdgeInsetsGeometry? margin;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?.w,
      height: height?.h,
      margin: margin,
      decoration: BoxDecoration(
        color: _backgroundColor(context),
        borderRadius: BorderRadiusDirectional.circular(
          borderRadius?.r ?? 10.0.r,
        ),
        boxShadow: boxShadow,
        border: isOutlined
            ? Border.all(
                color: borderColor,
                width: borderWidth.w,
              )
            : border,
      ),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(
            borderRadius?.r ?? 10.0.r,
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

  Color _backgroundColor(BuildContext context) {
    return isOutlined
        ? _outlinedBackgroundColor(context)
        : backgroundColor ?? AppColors.primaryColor;
  }

  Color _outlinedBackgroundColor(BuildContext context) =>
      (context.isDarkModeActive
          ? AppColors.darkColor
          : AppColors.lightModeColor);
}
