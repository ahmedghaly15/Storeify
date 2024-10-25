import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class ProfileSettingsTitle extends StatelessWidget {
  const ProfileSettingsTitle({super.key, required this.titleKey});

  final String titleKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: 6.h, start: 22.w),
      child: Text(
        context.translate(titleKey),
        style: AppTextStyles.textStyle16Medium.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
