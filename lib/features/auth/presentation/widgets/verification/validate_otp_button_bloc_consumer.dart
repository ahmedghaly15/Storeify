import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/presentation/cubits/validate_otp/validate_otp_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/validate_otp/validate_otp_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class ValidateOtpButtonBlocConsumer extends StatelessWidget {
  const ValidateOtpButtonBlocConsumer({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValidateOtpCubit, ValidateOtpState>(
      listenWhen: (_, current) => _listenWhen(current),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _buildWhen(current),
      builder: (context, state) => MainButton(
        onPressed: () => context.read<ValidateOtpCubit>().validateOtp(email),
        child: circularIndicatorOrTextWidget(
          isLoading: state is ValidateOtpLoading,
          context: context,
          textKey: LocaleKeys.verify,
        ),
      ),
    );
  }

  bool _buildWhen(ValidateOtpState<dynamic> current) {
    return current is ValidateOtpLoading ||
        current is ValidateOtpError ||
        current is ValidateOtpSuccess;
  }

  void _listener(ValidateOtpState<dynamic> state, BuildContext context) {
    state.whenOrNull(
      validateOtpSuccess: () {
        context.pushRoute(ResetPasswordRoute(email: email));
      },
      validateOtpError: (errorKey) => CustomToast.showToast(
        context: context,
        messageKey: errorKey,
        state: CustomToastState.error,
      ),
    );
  }

  bool _listenWhen(ValidateOtpState<dynamic> current) =>
      current is ValidateOtpSuccess || current is ValidateOtpError;
}
