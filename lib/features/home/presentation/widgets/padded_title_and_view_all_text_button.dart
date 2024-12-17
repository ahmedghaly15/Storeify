import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/home/presentation/widgets/list_title.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class PaddedTitleAndViewAllTextButton extends StatelessWidget {
  const PaddedTitleAndViewAllTextButton({
    super.key,
    required this.titleKey,
    required this.viewAllOnPressed,
  });

  final String titleKey;
  final VoidCallback viewAllOnPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTitle(titleKey: titleKey),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
              textStyle: AppTextStyles.textStyle16Regular,
            ),
            onPressed: viewAllOnPressed,
            child: Text(
              context.tr(LocaleKeys.viewAll),
            ),
          ),
        ],
      ),
    );
  }
}
