import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class NoResultSearchFoundWidget extends StatelessWidget {
  const NoResultSearchFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.imagesEmptyCart),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.h),
            child: Text(
              context.tr(LocaleKeys.noResultsFound),
              style: AppTextStyles.textStyle16Medium.copyWith(
                color: AppColors.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            context.tr(LocaleKeys.tryDifferentKeywords),
            style: AppTextStyles.textStyle12Medium.copyWith(
              color: AppColors.greyColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
