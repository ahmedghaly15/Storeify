import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class RegisterButtonBlocConsumer extends StatelessWidget {
  const RegisterButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listenWhen: (_, current) => _listenOrBuildWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _listenOrBuildWhen(current.status),
      builder: (context, state) => MainButton(
        margin: EdgeInsetsDirectional.only(
          start: 24.w,
          end: 24.w,
          bottom: 10.h,
        ),
        child: circularIndicatorOrTextWidget(
          isLoading: state.status == RegisterStateStatus.registerLoading,
          context: context,
          textKey: LocaleKeys.signUp,
        ),
        onPressed: () => context.read<RegisterCubit>().register(),
      ),
    );
  }

  void _listener(RegisterState<dynamic> state, BuildContext context) async {
    switch (state.status) {
      case RegisterStateStatus.registerLoading:
        context.unfocusKeyboard();
        break;
      case RegisterStateStatus.registerSuccess:
        currentUser = state.user;
        await AuthLocalDatasource.cacheUserAndSetTokenIntoHeaders(state.user!);
        context.showToast(LocaleKeys.accountCreatedSuccessfully);
        context.maybePop();
        break;
      case RegisterStateStatus.registerError:
        context.showToast(state.error!);
        break;
      default:
        break;
    }
  }

  bool _listenOrBuildWhen(RegisterStateStatus status) {
    return status == RegisterStateStatus.registerLoading ||
        status == RegisterStateStatus.registerSuccess ||
        status == RegisterStateStatus.registerError;
  }
}
