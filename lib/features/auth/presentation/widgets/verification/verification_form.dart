import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:store_ify/config/router/routes.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/core/utils/functions/show_toast.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/custom_general_button.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
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
              validator: (value) {
                if (value!.isEmpty) {
                  return "Pin is Empty";
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 40.h),
          BlocConsumer<VerificationCubit, VerificationState>(
            listener: (context, state) =>
                _handleVerificationState(state, context, widget.email),
            builder: (context, state) {
              if (state is VerificationLoading) {
                return const CustomCircularProgressIndicator();
              } else {
                return CustomGeneralButton(
                  text: 'Verify',
                  onPressed: () => _verifyOTP(context),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  void _verifyOTP(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      BlocProvider.of<VerificationCubit>(context).otpVerification(
        email: widget.email,
        forgetCode: _otpController.text,
      );
    }
  }

  void _handleVerificationState(
    VerificationState state,
    BuildContext context,
    String email,
  ) {
    if (state is VerificationSuccess) {
      _handleSuccessState(state, context, email);
    }
    if (state is VerificationError) {
      showToast(text: state.errorMessage, state: ToastStates.error);
    }
  }

  void _handleSuccessState(
    VerificationSuccess state,
    BuildContext context,
    String email,
  ) {
    showToast(text: state.message, state: ToastStates.success);
    context.navigateTo(
      routeName: Routes.resetPasswordViewRoute,
      arguments: email,
    );
  }
}
