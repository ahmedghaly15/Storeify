import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class EnableLocationLoadingWidget extends StatelessWidget {
  const EnableLocationLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(titleKey: LocaleKeys.checkout),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              spacing: 32.h,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppAssets.imagesNoNotifications, fit: BoxFit.cover),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: LinearProgressIndicator(
                    minHeight: 8.h,
                    color: AppColors.primaryColor,
                    backgroundColor: AppColors.colorD9D9D9,
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
