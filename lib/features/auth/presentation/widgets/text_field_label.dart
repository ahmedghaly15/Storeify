import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class TextFieldLabel extends StatelessWidget {
  const TextFieldLabel({
    super.key,
    required this.labelKey,
  });

  final String labelKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 9.h),
      child: Text(
        context.translate(labelKey),
        style: AppTextStyles.textStyle16Regular
            .copyWith(color: AppColors.primaryColor),
      ),
    );
  }
}
