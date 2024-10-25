import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';

class HowDoUWantToPayQuestion extends StatelessWidget {
  const HowDoUWantToPayQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      from: 30.h,
      child: Container(
        margin: EdgeInsetsDirectional.only(
          start: AppConstants.mainButtonHorizontalMarginVal.w,
          end: AppConstants.mainButtonHorizontalMarginVal.w,
          top: 32.h,
          bottom: 40.h,
        ),
        child: Text(
          context.translate(LangKeys.howDoUWantToPay),
          style: AppTextStyles.textStyle16Medium.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
