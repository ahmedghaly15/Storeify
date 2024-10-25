import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/data/models/reset_password_requirements.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_state.dart';

class ResetPassButtonBlocConsumer extends StatelessWidget {
  const ResetPassButtonBlocConsumer({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (_, current) => current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            CustomToast.showToast(
              context: context,
              messageKey: LangKeys.passwordResetSuccess,
              state: CustomToastState.success,
            );
            context.router
                .popUntil((route) => route.settings.name == LoginRoute.name);
          },
          error: (errorKey) => CustomToast.showToast(
            context: context,
            messageKey: errorKey,
            state: CustomToastState.error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is Loading || current is Error || current is Success,
      builder: (context, state) {
        return MainButton(
          margin: EdgeInsetsDirectional.symmetric(
            horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
          ),
          width: double.infinity,
          onPressed: () => context.read<ResetPasswordCubit>().resetPassword(
                ResetPasswordRequirements(
                  email: email,
                  context: context,
                ),
              ),
          child: circularIndicatorOrTextWidget(
            isLoading: state is Loading,
            context: context,
            textKey: LangKeys.resetPassword,
          ),
        );
      },
    );
  }
}
