import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class TextFieldLabel extends StatelessWidget {
  const TextFieldLabel({
    super.key,
    required this.labelKey,
    this.textStyle,
    this.margin,
  });

  final String labelKey;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsetsDirectional.only(bottom: 9.h, start: 9.w),
      child: Text(
        context.translate(labelKey),
        style: textStyle ?? AppTextStyles.textStyle16Regular
            .copyWith(color: AppColors.primaryColor),
      ),
    );
  }
}
