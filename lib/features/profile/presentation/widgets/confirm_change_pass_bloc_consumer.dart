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
      listenWhen: (_, current) => _listenOrBuildWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _listenOrBuildWhen(current.status),
      builder: (context, state) => MainButton(
        margin: EdgeInsets.symmetric(horizontal: 24.w),
        onPressed: () =>
            context.read<ChangePassCubit>().validateAndChangePass(),
        child: circularIndicatorOrTextWidget(
          isLoading:
              state.status == ChangePassStateStatus.changePasswordLoading,
          context: context,
          textKey: LocaleKeys.confirm,
        ),
      ),
    );
  }

  void _listener(ChangePassState state, BuildContext context) {
    switch (state.status) {
      case ChangePassStateStatus.changePasswordLoading:
        context.unfocusKeyboard();
        break;
      case ChangePassStateStatus.changePasswordSuccess:
        context.maybePop();
        CustomToast.showToast(
          context: context,
          messageKey: LocaleKeys.passChangedSuccessfully,
          state: CustomToastState.success,
        );
        break;
      case ChangePassStateStatus.changePasswordError:
        CustomToast.showToast(
          context: context,
          state: CustomToastState.error,
          messageKey: state.error ?? '',
        );
        break;
      default:
        break;
    }
  }

  bool _listenOrBuildWhen(ChangePassStateStatus status) {
    return status == ChangePassStateStatus.changePasswordLoading ||
        status == ChangePassStateStatus.changePasswordSuccess ||
        status == ChangePassStateStatus.changePasswordError;
  }
}
