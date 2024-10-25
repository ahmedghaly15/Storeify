import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';

Widget circularIndicatorOrTextWidget({
  required bool isLoading,
  required BuildContext context,
  required String textKey,
}) {
  return isLoading
      ? SizedBox.square(
          dimension: 24.h,
          child: CustomCircularProgressIndicator(
            color: context.isDarkModeActive
                ? AppColors.darkColor
                : AppColors.lightModeColor,
          ),
        )
      : Text(
          context.translate(textKey),
          style: AppTextStyles.mainButtonTextStyle,
        );
}
