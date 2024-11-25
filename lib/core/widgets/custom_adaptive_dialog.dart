import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';

class CustomAdaptiveDialog extends StatelessWidget {
  const CustomAdaptiveDialog({
    super.key,
    this.actions,
    this.content,
    this.title,
    this.contentText,
    this.titleText,
    this.contentPadding,
    this.actionsPadding,
  });

  final List<Widget>? actions;
  final Widget? content, title;
  final String? contentText, titleText;
  final EdgeInsetsGeometry? contentPadding, actionsPadding;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      icon: Image.asset(
        AppAssets.appIcon,
        width: 48.w,
        height: 48.h,
      ),
      backgroundColor: context.isDarkModeActive
          ? AppColors.darkColor
          : AppColors.lightModeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      title: title ??
          (titleText != null
              ? Text(
                  context.tr(titleText!),
                  style: AppTextStyles.textStyle20Medium,
                )
              : null),
      content: content ??
          Text(
            context.tr(contentText!),
            style: AppTextStyles.textStyle16Medium,
          ),
      actions: actions,
      actionsPadding: actionsPadding,
      contentPadding: contentPadding,
    );
  }
}
