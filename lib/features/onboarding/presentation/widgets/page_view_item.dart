import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/onboarding/data/models/onboarding_attributes.dart';
import 'package:store_ify/features/onboarding/presentation/widgets/custom_indicator.dart';
import 'package:store_ify/features/onboarding/presentation/widgets/next_button_bloc_builder.dart';

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
            style: AppTextStyles.textStyle16Medium,
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
                color: AppColors.fontPrimaryColor,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        MySizedBox.height24,
        const CustomIndicators(),
        MySizedBox.height40,
        Container(
          margin: EdgeInsets.symmetric(horizontal: 80.w),
          child: const NextButtonBlocBuilder(),
        ),
      ],
    );
  }

  List<TextSpan> _colorizeAppName({
    required BuildContext context,
    required String textKey,
    required TextStyle textStyle,
  }) {
    List<TextSpan> spans = <TextSpan>[];
    String translatedText = context.translate(textKey);
    List<String> words = translatedText.split(' ');

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
