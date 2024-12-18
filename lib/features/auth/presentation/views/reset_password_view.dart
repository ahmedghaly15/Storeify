import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/widgets/reset_password/reset_pass_button_bloc_consumer.dart';
import 'package:store_ify/features/auth/presentation/widgets/reset_password/reset_password_form.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

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
      create: (_) => getIt.get<ResetPasswordCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    context.tr(LocaleKeys.resetPassword),
                    style: AppTextStyles.textStyle24Medium,
                    textAlign: TextAlign.center,
                  ),
                  MySizedBox.height13,
                  Text(
                    context.tr(LocaleKeys.EnterYourNewPass),
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
