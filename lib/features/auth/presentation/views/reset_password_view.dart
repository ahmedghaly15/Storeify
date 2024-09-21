import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/widgets/reset_password/reset_pass_button_bloc_consumer.dart';
import 'package:store_ify/features/auth/presentation/widgets/reset_password/reset_password_form.dart';

@RoutePage()
class ResetPasswordView extends StatelessWidget implements AutoRouteWrapper {
  const ResetPasswordView({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ResetPasswordCubit>(
      create: (context) => getIt.get<ResetPasswordCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    context.translate(LangKeys.resetPassword),
                    style: AppTextStyles.textStyle24Medium,
                  ),
                  MySizedBox.height13,
                  Text(
                    context.translate(LangKeys.enterYourNewPass),
                    style: AppTextStyles.textStyle16Regular
                        .copyWith(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  MySizedBox.height22,
                  const ResetPasswordForm(),
                  MySizedBox.height19,
                  ResetPassButtonBlocConsumer(email: email),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
