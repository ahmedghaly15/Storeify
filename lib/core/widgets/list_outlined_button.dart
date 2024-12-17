import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/main_button.dart';

class ListOutlinedButton extends StatelessWidget {
  const ListOutlinedButton({
    super.key,
    required this.isActive,
    required this.onPressed,
    this.textKey,
    this.text,
  });

  final bool isActive;
  final VoidCallback onPressed;
  final String? textKey, text;

  @override
  Widget build(BuildContext context) {
    return MainButton(
      isOutlined: true,
      isInfinityWidth: false,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      margin: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      borderRadius: 34,
      borderColor: _activeColor(isActive, context.isDarkModeActive),
      onPressed: onPressed,
      child: Text(
        text ?? context.tr(textKey!),
        style: AppTextStyles.textStyle10Medium.copyWith(
          color: _activeColor(isActive, context.isDarkModeActive),
        ),
      ),
    );
  }

  Color _activeColor(bool isSelected, bool isDarkModeActive) {
    return isSelected
        ? AppColors.primaryColor
        : (isDarkModeActive ? Colors.white : AppColors.blueColor);
  }
}
