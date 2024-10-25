import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/main_button.dart';

class TryAgainButton extends StatelessWidget {
  const TryAgainButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MainButton(
        margin: EdgeInsets.symmetric(horizontal: 80.w),
        onPressed: onPressed,
        textKey: LangKeys.tryAgain,
      ),
    );
  }
}
