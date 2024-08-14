import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
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
          context.translate(LangKeys.viewAll),
          style: AppTextStyles.textStyle16Regular
              .copyWith(color: AppColors.greyColor),
        ),
      ),
    );
  }
}
