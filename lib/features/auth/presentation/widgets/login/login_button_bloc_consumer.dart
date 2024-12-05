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
import 'package:store_ify/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class LoginButtonBlocConsumer extends StatelessWidget {
  const LoginButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (_, current) => _listenOrBuildWhen(current.status),
      listener: (context, state) async => await _listener(state, context),
      buildWhen: (_, current) => _listenOrBuildWhen(current.status),
      builder: (context, state) => MainButton(
        margin: EdgeInsets.symmetric(
          horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
        ),
        child: circularIndicatorOrTextWidget(
          isLoading: state.status == LoginStateStatus.loginLoading,
          context: context,
          textKey: LocaleKeys.login,
        ),
        onPressed: () => context.read<LoginCubit>().login(),
      ),
    );
  }

  Future<void> _listener(
      LoginState<dynamic> state, BuildContext context) async {
    switch (state.status) {
      case LoginStateStatus.loginLoading:
        context.unfocusKeyboard();
        break;
      case LoginStateStatus.loginSuccess:
        await _cacheUserAndGoHome(state, context);
      case LoginStateStatus.loginError:
        CustomToast.showToast(
          context: context,
          messageKey: state.error!,
          state: CustomToastState.error,
        );
      default:
        break;
    }
  }

  Future<void> _cacheUserAndGoHome(
    LoginState<dynamic> state,
    BuildContext context,
  ) async {
    currentUser = state.user;
    await AuthLocalDatasource.cacheUserAndSetTokenIntoHeaders(
      state.user!,
    );
    context.replaceRoute(const BottomNavBarRoute());
  }

  bool _listenOrBuildWhen(LoginStateStatus status) {
    return status == LoginStateStatus.loginLoading ||
        status == LoginStateStatus.loginSuccess ||
        status == LoginStateStatus.loginError;
  }
}
