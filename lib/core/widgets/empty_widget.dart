import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    this.imagePath = AppAssets.imagesNoNotifications,
    required this.titleKey,
    this.descriptionKey,
  });

  final String imagePath, titleKey;
  final String? descriptionKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Container(
            margin: EdgeInsets.only(top: 8.h, bottom: 16.h),
            child: Text(
              context.tr(titleKey),
              style: AppTextStyles.textStyle16Medium.copyWith(
                color: AppColors.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          if (descriptionKey != null)
            Text(
              context.tr(descriptionKey!),
              style: AppTextStyles.textStyle12Regular.copyWith(
                color: AppColors.greyColor,
              ),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}
