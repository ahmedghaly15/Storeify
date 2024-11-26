import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class VerifyEmailButtonBlocConsumer extends StatelessWidget {
  const VerifyEmailButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
      listenWhen: (_, current) =>
          current is ForgotPasswordSuccess || current is ForgotPasswordError,
      listener: (context, state) {
        state.whenOrNull(
          forgotPasswordSuccess: () => CustomToast.showToast(
            context: context,
            messageKey: LocaleKeys.emailSent,
            state: CustomToastState.success,
          ),
          forgotPasswordError: (errorKey) => CustomToast.showToast(
            context: context,
            messageKey: errorKey,
            state: CustomToastState.error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is ForgotPasswordLoading ||
          current is ForgotPasswordError ||
          current is ForgotPasswordSuccess,
      builder: (context, state) => MainButton(
        margin: EdgeInsetsDirectional.only(
          top: 32.h,
          bottom: 20.h,
          start: 24.w,
          end: 24.w,
        ),
        width: double.infinity,
        onPressed: () =>
            context.read<ForgotPasswordCubit>().forgotPassword(context),
        child: circularIndicatorOrTextWidget(
          isLoading: state is ForgotPasswordLoading,
          context: context,
          textKey: LocaleKeys.verifyEmail,
        ),
      ),
    );
  }
}
