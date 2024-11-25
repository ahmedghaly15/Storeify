import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/profile/presentation/cubits/change_pass/change_pass_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/change_pass/change_pass_state.dart';

class ConfirmChangePassBlocConsumer extends StatelessWidget {
  const ConfirmChangePassBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangePassCubit, ChangePassState>(
      listenWhen: (_, current) =>
          current is ChangePasswordLoading ||
          current is ChangePasswordSuccess ||
          current is ChangePasswordError,
      listener: (context, state) {
        state.whenOrNull(
          changePasswordLoading: () => context.unfocusKeyboard(),
          changePasswordSuccess: () {
            context.maybePop();
            CustomToast.showToast(
              context: context,
              messageKey: LocaleKeys.passChangedSuccessfully,
              state: CustomToastState.success,
            );
          },
          changePasswordError: (error) => CustomToast.showToast(
            context: context,
            state: CustomToastState.error,
            messageKey: error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is ChangePasswordLoading ||
          current is ChangePasswordError ||
          current is ChangePasswordSuccess,
      builder: (context, state) => MainButton(
        margin: EdgeInsets.symmetric(horizontal: 24.w),
        width: double.infinity,
        onPressed: () =>
            context.read<ChangePassCubit>().validateAndChangePass(),
        child: circularIndicatorOrTextWidget(
          isLoading: state is ChangePasswordLoading,
          context: context,
          textKey: LocaleKeys.confirm,
        ),
      ),
    );
  }
}
