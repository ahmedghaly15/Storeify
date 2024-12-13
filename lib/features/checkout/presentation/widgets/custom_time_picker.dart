import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';
import 'package:store_ify/features/checkout/presentation/widgets/custom_time_picker_item.dart';

class CustomTimePicker extends StatelessWidget {
  const CustomTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocSelector<CheckoutCubit, CheckoutState, int>(
          selector: (state) => state.checkoutHour,
          builder: (context, hour) => CustomTimePickerItem(
            minValue: 1,
            maxValue: 12,
            value: hour,
            onChanged: (value) =>
                context.read<CheckoutCubit>().changeHours(value),
          ),
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
        BlocSelector<CheckoutCubit, CheckoutState, int>(
          selector: (state) => state.checkoutMinutes,
          builder: (context, minutes) => CustomTimePickerItem(
            minValue: 00,
            maxValue: 59,
            value: minutes,
            onChanged: (value) =>
                context.read<CheckoutCubit>().changeMinutes(value),
          ),
        )
      ],
    );
  }
}
