import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class CustomTimePickerItem extends StatelessWidget {
  const CustomTimePickerItem({
    super.key,
    required this.minValue,
    required this.maxValue,
    required this.value,
    required this.onChanged,
  });

  final int minValue;
  final int maxValue;
  final int value;
  final void Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
        color: context.isDarkModeActive
            ? Colors.transparent
            : AppColors.lightModeColor,
        border: Border.all(
          color: AppColors.fontPrimaryColor,
          width: 1.08.w,
        ),
      ),
      child: NumberPicker(
        minValue: minValue,
        maxValue: maxValue,
        value: value,
        itemCount: 1,
        zeroPad: true,
        itemWidth: 41.w,
        itemHeight: 41.h,
        onChanged: onChanged,
        textStyle: AppTextStyles.textStyle16SemiBold.copyWith(
          color: AppColors.primaryColor,
        ),
        selectedTextStyle: AppTextStyles.textStyle16SemiBold.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
