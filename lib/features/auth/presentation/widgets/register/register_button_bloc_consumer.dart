import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_state.dart';

class RegisterButtonBlocConsumer extends StatelessWidget {
  const RegisterButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listenWhen: (_, current) =>
          current is RegisterError ||
          current is RegisterSuccess ||
          current is RegisterLoading,
      listener: (context, state) {
        state.whenOrNull(
          registerLoading: () => context.unfocusKeyboard(),
          registerSuccess: (user) async {
            currentUser = user;
            await AuthLocalDatasource.cacheUserAndSetTokenIntoHeaders(user);
            CustomToast.showToast(
              context: context,
              messageKey: LangKeys.accountCreatedSuccessfully,
              state: CustomToastState.success,
            );
            context.maybePop();
          },
          registerError: (error) => CustomToast.showToast(
            context: context,
            messageKey: error,
            state: CustomToastState.error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is RegisterLoading ||
          current is RegisterError ||
          current is RegisterSuccess,
      builder: (context, state) => MainButton(
        margin: EdgeInsetsDirectional.only(
          start: 24.w,
          end: 24.w,
          bottom: 10.h,
        ),
        width: double.infinity,
        child: circularIndicatorOrTextWidget(
          isLoading: state is RegisterLoading,
          context: context,
          textKey: LangKeys.signUp,
        ),
        onPressed: () => context.read<RegisterCubit>().register(),
      ),
    );
  }
}
