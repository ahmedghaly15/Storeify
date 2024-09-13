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
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_state.dart';

class LoginButtonBlocConsumer extends StatelessWidget {
  const LoginButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (_, current) => current is Error || current is Success,
      listener: (context, state) {
        state.whenOrNull(
          success: (_) => context.replaceRoute(const BottomNavBarRoute()),
          error: (error) => CustomToast.showToast(
            context: context,
            messageKey: error,
            state: CustomToastState.error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return MainButton(
          margin: EdgeInsets.symmetric(
            horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
          ),
          child: circularIndicatorOrTextWidget(
            isLoading: state is Loading,
            context: context,
            textKey: LangKeys.login,
          ),
          onPressed: () => context.read<LoginCubit>().login(context),
        );
      },
    );
  }
}
