import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/features/profile/presentation/cubits/change_pass/change_pass_cubit.dart';
import 'package:store_ify/features/profile/presentation/widgets/change_password_form.dart';
import 'package:store_ify/features/profile/presentation/widgets/confirm_change_pass_bloc_consumer.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

@RoutePage()
class ChangePasswordView extends StatelessWidget implements AutoRouteWrapper {
  const ChangePasswordView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ChangePassCubit>(
      create: (_) => getIt.get<ChangePassCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleKey: LocaleKeys.changePassword),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                spacing: 24.h,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ChangePasswordForm(),
                  ConfirmChangePassBlocConsumer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
