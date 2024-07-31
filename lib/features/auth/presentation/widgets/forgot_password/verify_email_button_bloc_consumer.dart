import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';

class VerifyEmailButtonBlocConsumer extends StatelessWidget {
  const VerifyEmailButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
      listenWhen: (_, current) => current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          success: () => CustomToast.showToast(
            context: context,
            messageKey: LangKeys.emailSent,
            state: CustomToastState.success,
          ),
          error: (error) => CustomToast.showToast(
            context: context,
            messageKey: error,
            state: CustomToastState.error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is Loading || current is Error || current is Success,
      builder: (context, state) => MainButton(
        onPressed: () {
          // context.read<ForgotPasswordCubit>().forgotPassword(context);
          context.pushRoute(VerificationRoute(
              email: context.read<ForgotPasswordCubit>().emailController.text));
        },
        child: circularProgressOrTextWidget(
          condition: state is Loading,
          context: context,
          textKey: LangKeys.verifyEmail,
        ),
      ),
    );
  }
}
