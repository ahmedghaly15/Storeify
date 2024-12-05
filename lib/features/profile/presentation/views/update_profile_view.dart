import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/features/profile/presentation/cubits/update_profile/update_profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/widgets/confirm_update_profile_bloc_consumer.dart';
import 'package:store_ify/features/profile/presentation/widgets/current_user_data.dart';
import 'package:store_ify/features/profile/presentation/widgets/update_profile_form.dart';

@RoutePage()
class UpdateProfileView extends StatelessWidget implements AutoRouteWrapper {
  const UpdateProfileView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<UpdateProfileCubit>(
      create: (_) => getIt.get<UpdateProfileCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(titleKey: LocaleKeys.updateProfile),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CurrentUserData(),
                  UpdateProfileForm(),
                  ConfirmUpdateProfileBlocConsumer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
