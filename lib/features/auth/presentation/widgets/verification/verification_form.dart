import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:store_ify/config/router/routes.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/core/utils/functions/show_toast.dart';
import 'package:store_ify/core/widgets/custom_loading_indicator.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/presentation/cubits/verification/verification_cubit.dart';

class VerificationForm extends StatefulWidget {
  const VerificationForm({
    super.key,
    required this.email,
  });

  final String email;

  @override
  State<VerificationForm> createState() => _VerificationFormState();
}

class _VerificationFormState extends State<VerificationForm> {
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Pinput(
            controller: _otpController,
            androidSmsAutofillMethod:
                AndroidSmsAutofillMethod.smsUserConsentApi,
            listenForMultipleSmsOnAndroid: true,
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
          ),
        ),
        SizedBox(height: 40.h),
        BlocConsumer<VerificationCubit, VerificationState>(
          listener: (context, state) =>
              _handleVerificationState(state, context),
          builder: (context, state) {
            return MainButton(
              child: state is VerificationLoading
                  ? const CustomLoadingIndicator()
                  : Text(
                      'Verify',
                      style: AppTextStyles.textStyle16Medium.copyWith(
                        color: Colors.white,
                      ),
                    ),
              onPressed: () => _verifyOTP(context),
            );
          },
        ),
      ],
    );
  }

  void _verifyOTP(BuildContext context) {
    BlocProvider.of<VerificationCubit>(context).otpVerification(
      email: widget.email,
      forgetCode: _otpController.text,
    );
  }

  void _handleVerificationState(VerificationState state, BuildContext context) {
    if (state is VerificationSuccess) {
      _handleSuccessState(state, context);
    }
    if (state is VerificationError) {
      showToast(text: state.errorMessage, state: ToastStates.error);
    }
  }

  void _handleSuccessState(VerificationSuccess state, BuildContext context) {
    showToast(text: state.message, state: ToastStates.success);
    context.navigateTo(
      routeName: Routes.resetPasswordViewRoute,
      arguments: widget.email,
    );
  }
}
