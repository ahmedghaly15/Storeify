import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';

class CustomTimePicker extends StatelessWidget {
  const CustomTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<CheckoutCubit, CheckoutState>(
          buildWhen: (_, current) => current is ChangeCheckoutHour,
          builder: (_, __) => _buildCustomTimePicker(
            minValue: 1,
            maxValue: 12,
            value: context.read<CheckoutCubit>().hours,
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
        BlocBuilder<CheckoutCubit, CheckoutState>(
          buildWhen: (_, current) => current is ChangeCheckoutMinutes,
          builder: (_, __) => _buildCustomTimePicker(
            minValue: 00,
            maxValue: 59,
            value: context.read<CheckoutCubit>().minutes,
            onChanged: (value) =>
                context.read<CheckoutCubit>().changeMinutes(value),
          ),
        )
      ],
    );
  }

  Widget _buildCustomTimePicker({
    required int minValue,
    required int maxValue,
    required int value,
    required void Function(int) onChanged,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
        color: Colors.white,
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
