import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class ResetPassButtonBlocConsumer extends StatelessWidget {
  const ResetPassButtonBlocConsumer({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (_, current) => _listenOrBuildWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _listenOrBuildWhen(current.status),
      builder: (context, state) => MainButton(
        margin: EdgeInsetsDirectional.symmetric(
          horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
        ),
        width: double.infinity,
        onPressed: () =>
            context.read<ResetPasswordCubit>().resetPassword(email),
        child: circularIndicatorOrTextWidget(
          isLoading: state.status == ResetPassStateStatus.resetPassLoading,
          context: context,
          textKey: LocaleKeys.resetPassword,
        ),
      ),
    );
  }

  void _listener(ResetPasswordState state, BuildContext context) {
    switch (state.status) {
      case ResetPassStateStatus.resetPassLoading:
        context.unfocusKeyboard();
        break;
      case ResetPassStateStatus.resetPassSuccess:
        CustomToast.showToast(
          context: context,
          messageKey: LocaleKeys.passwordResetSuccess,
          state: CustomToastState.success,
        );
        context.router
            .popUntil((route) => route.settings.name == LoginRoute.name);
        break;
      case ResetPassStateStatus.resetPassError:
        CustomToast.showToast(
          context: context,
          messageKey: state.error!,
          state: CustomToastState.error,
        );
        break;
      default:
        break;
    }
  }

  bool _listenOrBuildWhen(ResetPassStateStatus status) {
    return status == ResetPassStateStatus.resetPassLoading ||
        status == ResetPassStateStatus.resetPassSuccess ||
        status == ResetPassStateStatus.resetPassError;
  }
}
