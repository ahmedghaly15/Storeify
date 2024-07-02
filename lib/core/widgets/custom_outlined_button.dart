import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonOutlinedApp extends StatelessWidget {
  const CustomButtonOutlinedApp({
    super.key,
    required this.text,
    this.onPressed,
    required this.activeColor,
  });

  final String text;
  final void Function()? onPressed;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        side: WidgetStatePropertyAll(BorderSide(width: 1, color: activeColor)),
        padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 25, vertical: 5)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.textStyle8Regular
            .copyWith(fontSize: 10.sp, color: activeColor),
      ),
    );
  }
}
