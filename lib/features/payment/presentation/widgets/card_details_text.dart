import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class CardDetailsText extends StatelessWidget {
  const CardDetailsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        start: 14.w,
        top: 29.h,
        bottom: 27.h,
      ),
      child: Text(
        context.tr(LocaleKeys.cardDetails),
        style: AppTextStyles.textStyle20Medium.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
