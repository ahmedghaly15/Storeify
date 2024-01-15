import 'package:flutter/material.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';

class ViewAllTextButton extends StatelessWidget {
  const ViewAllTextButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        "View all",
        style: AppTextStyles.textStyle16Regular
            .copyWith(color: AppColors.greyColor),
      ),
    );
  }
}
