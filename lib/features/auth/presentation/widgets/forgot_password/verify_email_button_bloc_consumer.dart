import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';

import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class VerifyEmailButtonBlocConsumer extends StatelessWidget {
  const VerifyEmailButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
      listenWhen: (_, current) => _listenOrBuildWhen(current),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _listenOrBuildWhen(current),
      builder: (context, state) => MainButton(
        margin: EdgeInsetsDirectional.only(
          top: 32.h,
          bottom: 20.h,
          start: 24.w,
          end: 24.w,
        ),
        onPressed: () => context.read<ForgotPasswordCubit>().forgotPassword(),
        child: circularIndicatorOrTextWidget(
          isLoading: state is ForgotPasswordLoading,
          context: context,
          textKey: LocaleKeys.verifyEmail,
        ),
      ),
    );
  }

  bool _listenOrBuildWhen(ForgotPasswordState<dynamic> current) =>
      current is ForgotPasswordLoading ||
      current is ForgotPasswordSuccess ||
      current is ForgotPasswordError;

  void _listener(ForgotPasswordState<dynamic> state, BuildContext context) {
    state.whenOrNull(
      forgotPasswordLoading: () => context.unfocusKeyboard(),
      forgotPasswordSuccess: () => context.showToast(LocaleKeys.emailSent),
      forgotPasswordError: (errorKey) => context.showToast(errorKey),
    );
  }
}
