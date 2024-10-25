import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_state.dart';

class LoginButtonBlocConsumer extends StatelessWidget {
  const LoginButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (_, current) =>
          current is LoginError ||
          current is LoginSuccess ||
          current is LoginLoading,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () => context.unfocusKeyboard(),
          loginSuccess: (user) async {
            currentUser = user;
            await AuthLocalDatasource.cacheUserAndSetTokenIntoHeaders(user);
            context.replaceRoute(const BottomNavBarRoute());
          },
          loginError: (errorKey) => CustomToast.showToast(
            context: context,
            messageKey: errorKey,
            state: CustomToastState.error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is LoginLoading ||
          current is LoginSuccess ||
          current is LoginError,
      builder: (context, state) => MainButton(
        margin: EdgeInsets.symmetric(
          horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
        ),
        width: double.infinity,
        child: circularIndicatorOrTextWidget(
          isLoading: state is LoginLoading,
          context: context,
          textKey: LangKeys.login,
        ),
        onPressed: () => context.read<LoginCubit>().login(),
      ),
    );
  }
}
