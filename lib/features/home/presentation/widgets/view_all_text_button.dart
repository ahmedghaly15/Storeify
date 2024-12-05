import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class ViewAllTextButton extends StatelessWidget {
  const ViewAllTextButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: 8.w),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          context.tr(LocaleKeys.viewAll),
          style: AppTextStyles.textStyle16Regular,
        ),
      ),
    );
  }
}
