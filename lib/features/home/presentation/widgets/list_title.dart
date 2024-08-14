import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class ListTitle extends StatelessWidget {
  const ListTitle({
    super.key,
    required this.titleKey,
    this.bottomPadding = 0,
  });

  final String titleKey;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding.h, left: 16.w),
      child: Text(
        context.translate(titleKey),
        style: AppTextStyles.textStyle16Regular,
      ),
    );
  }
}
