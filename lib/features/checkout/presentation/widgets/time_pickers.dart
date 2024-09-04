import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/checkout/presentation/widgets/custom_time_picker.dart';

class TimePickers extends StatelessWidget {
  const TimePickers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTimePicker(
          minValue: 1,
          maxValue: 12,
          value: 4,
          onChanged: (value) {},
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 26.w),
          child: Text(
            ':',
            style: AppTextStyles.textStyle24Medium.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
        CustomTimePicker(
          minValue: 00,
          maxValue: 59,
          value: 00,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
