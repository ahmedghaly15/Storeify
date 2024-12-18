import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/profile/data/models/setting_item.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/widgets/profile_settings_title.dart';
import 'package:store_ify/features/profile/presentation/widgets/profile_view_sliver_app_bar.dart';
import 'package:store_ify/features/profile/presentation/widgets/settings_separated_list_view.dart';
import 'package:store_ify/features/profile/presentation/widgets/user_profile_data.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

@RoutePage()
class ProfileView extends StatelessWidget implements AutoRouteWrapper {
  const ProfileView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ProfileCubit>(
      create: (_) => getIt.get<ProfileCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const ProfileViewSliverAppBar(),
            const SliverToBoxAdapter(child: UserProfileData()),
            const SliverToBoxAdapter(
              child: ProfileSettingsTitle(titleKey: LocaleKeys.appSettings),
            ),
            SliverToBoxAdapter(
              child: SettingsSeparatedListView(
                settings: SettingItem.profileAppSetting,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 16.h),
                child: const ProfileSettingsTitle(
                  titleKey: LocaleKeys.accountSettings,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SettingsSeparatedListView(
                settings: SettingItem.profileAccountSettings,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
