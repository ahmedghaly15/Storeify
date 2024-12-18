import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/onboarding/data/models/onboarding_attributes.dart';
import 'package:store_ify/features/onboarding/presentation/widgets/custom_indicators.dart';
import 'package:store_ify/features/onboarding/presentation/widgets/next_button_bloc_selector.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.pageInfo,
  });

  final OnboardingAttributes pageInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(pageInfo.image),
        MySizedBox.height19,
        RichText(
          text: TextSpan(
            children: _colorizeAppName(
              context: context,
              textKey: pageInfo.titleKey,
              textStyle: AppTextStyles.textStyle16Medium,
            ),
            style: AppTextStyles.textStyle16Medium.copyWith(
              color: Colors.black,
            ),
          ),
          textAlign: TextAlign.center,
        ),
        MySizedBox.height32,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w),
          child: RichText(
            text: TextSpan(
              children: _colorizeAppName(
                context: context,
                textKey: pageInfo.subTitleKey,
                textStyle: AppTextStyles.textStyle12Medium,
              ),
              style: AppTextStyles.textStyle12Medium.copyWith(
                color: context.isDarkModeActive ? Colors.white : Colors.black,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        MySizedBox.height24,
        const CustomIndicators(),
        MySizedBox.height40,
        const NextButtonBlocSelector(),
      ],
    );
  }

  List<TextSpan> _colorizeAppName({
    required BuildContext context,
    required String textKey,
    required TextStyle textStyle,
  }) {
    List<TextSpan> spans = <TextSpan>[];
    String trdText = context.tr(textKey);
    List<String> words = trdText.split(' ');

    for (String word in words) {
      if (word == AppStrings.appTitle) {
        spans.add(
          TextSpan(
            text: '$word ',
            style: textStyle.copyWith(color: AppColors.primaryColor),
          ),
        );
      } else {
        spans.add(
          TextSpan(text: '$word '),
        );
      }
    }
    return spans;
  }
}
