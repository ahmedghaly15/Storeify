import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';

Widget circularIndicatorOrTextWidget({
  required bool isLoading,
  required BuildContext context,
  required String textKey,
}) {
  return isLoading
      ? Container(
          margin: EdgeInsets.symmetric(vertical: 4.h),
          child: const CustomCircularProgressIndicator(
            color: Colors.white,
          ),
        )
      : Text(
          context.translate(textKey),
          style: AppTextStyles.mainButtonTextStyle,
        );
}
