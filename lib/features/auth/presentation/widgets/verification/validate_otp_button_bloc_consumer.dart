import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/presentation/cubits/validate_otp/validate_otp_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/validate_otp/validate_otp_state.dart';

class ValidateOtpButtonBlocConsumer extends StatelessWidget {
  const ValidateOtpButtonBlocConsumer({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValidateOtpCubit, ValidateOtpState>(
      listenWhen: (_, current) => current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            // TODO: navigate to reset password screen
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
          onPressed: () => context.read<ValidateOtpCubit>().validateOtp(email),
          child: circularProgressOrTextWidget(
            condition: state is Loading,
            context: context,
            textKey: LangKeys.verify,
          ),
        );
      },
    );
  }
}
