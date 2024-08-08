import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

Widget circularIndicatorOrTextWidget({
  required bool condition,
  required BuildContext context,
  required String textKey,
}) {
  return condition
      ? const CircularProgressIndicator(
          color: Colors.white,
        )
      : Text(
          context.translate(textKey),
          style: AppTextStyles.mainButtonTextStyle,
        );
}
