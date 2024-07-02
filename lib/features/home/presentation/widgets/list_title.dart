import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class ListTitle extends StatelessWidget {
  const ListTitle({
    super.key,
    required this.title,
    this.bottomPadding = 0,
  });

  final String title;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding.h, left: 16.w),
      child: Text(
        title,
        style: AppTextStyles.textStyle16Regular,
      ),
    );
  }
}
