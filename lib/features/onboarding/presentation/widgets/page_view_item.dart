import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/onboarding/data/models/on_boarding_model.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.pageInfo,
  });

  final OnBoardingModel pageInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Image.asset(pageInfo.image),
        ),
        SizedBox(height: 19.h),
        RichText(
          text: TextSpan(
            children: _colorizeAppTitle(
              text: pageInfo.title,
              textStyle: AppTextStyles.textStyle16Medium,
            ),
            style: AppTextStyles.textStyle16Medium,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 32.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w),
          child: RichText(
            text: TextSpan(
              children: _colorizeAppTitle(
                text: pageInfo.subTitle,
                textStyle: AppTextStyles.textStyle12Medium,
              ),
              style: AppTextStyles.textStyle12Medium.copyWith(
                color: AppColors.fontPrimaryColor,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  List<TextSpan> _colorizeAppTitle({
    required String text,
    required TextStyle textStyle,
  }) {
    List<TextSpan> spans = <TextSpan>[];
    List<String> words = text.split(' ');

    for (String word in words) {
      if (word == AppStrings.appTitle) {
        spans.add(
          TextSpan(
            text: '$word ',
            style: textStyle.copyWith(color: AppColors.primaryColor),
          ),
        );
      } else {
        spans.add(TextSpan(text: '$word '));
      }
    }
    return spans;
  }
}
