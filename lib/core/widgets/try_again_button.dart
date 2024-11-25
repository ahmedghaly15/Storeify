import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class TryAgainButton extends StatelessWidget {
  const TryAgainButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MainButton(
        margin: EdgeInsets.symmetric(horizontal: 80.w),
        onPressed: onPressed,
        textKey: LocaleKeys.tryAgain,
      ),
    );
  }
}
