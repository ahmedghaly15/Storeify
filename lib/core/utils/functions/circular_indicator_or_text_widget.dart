import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

Widget circularProgressOrTextWidget({
  required bool condition,
  required BuildContext context,
}) {
  return condition
      ? const CircularProgressIndicator(
          color: Colors.white,
        )
      : Text(
          context.translate(LangKeys.verifyEmail),
          style: AppTextStyles.mainButtonTextStyle,
        );
}
