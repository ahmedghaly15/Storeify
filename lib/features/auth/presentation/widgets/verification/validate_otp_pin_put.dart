import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/auth/presentation/cubits/validate_otp/validate_otp_cubit.dart';

class ValidateOtpPinput extends StatelessWidget {
  const ValidateOtpPinput({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      controller: context.read<ValidateOtpCubit>().otpController,
      onCompleted: (_) => context.unfocusKeyboard(),
      autofocus: true,
      showCursor: true,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      defaultPinTheme: PinTheme(
        width: 52.w,
        height: 52.w,
        textStyle: TextStyle(
          fontSize: 22.sp,
          color: AppColors.blueColor,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.r),
          border: Border.all(color: AppColors.primaryColor),
        ),
      ),
      separatorBuilder: (index) => SizedBox(width: 34.w),
    );
  }
}
