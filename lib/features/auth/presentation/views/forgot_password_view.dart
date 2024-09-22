import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/widgets/forgot_password/forgot_password_form.dart';
import 'package:store_ify/features/auth/presentation/widgets/forgot_password/verify_email_button_bloc_consumer.dart';
import 'package:store_ify/features/auth/presentation/widgets/sign_up_text_button.dart';

@RoutePage()
class ForgotPasswordView extends StatelessWidget implements AutoRouteWrapper {
  const ForgotPasswordView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ForgotPasswordCubit>(
      create: (context) => getIt.get<ForgotPasswordCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    context.translate(LangKeys.forgotPassword),
                    style: AppTextStyles.textStyle24Medium,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 14.h),
                  child: const ForgotPasswordForm(),
                ),
                const VerifyEmailButtonBlocConsumer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.translate(LangKeys.dontHaveAnAccount),
                      style: AppTextStyles.textStyle16Regular,
                    ),
                    const SignUpTextButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
