import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/profile/data/models/setting_item.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/widgets/current_user_data.dart';
import 'package:store_ify/features/profile/presentation/widgets/profile_settings_title.dart';
import 'package:store_ify/features/profile/presentation/widgets/settings_separated_list_view.dart';

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
            CustomSliverAppBar(
              titleKey: LangKeys.profile,
              actions: [
                Container(
                  margin: EdgeInsetsDirectional.only(end: 16.w),
                  child: const Icon(
                    AppConstants.personIcon,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            const SliverToBoxAdapter(child: CurrentUserData()),
            const SliverToBoxAdapter(
              child: ProfileSettingsTitle(titleKey: LangKeys.appSettings),
            ),
            SliverToBoxAdapter(
              child: SettingsSeparatedListView(
                settings: SettingItem.profileAppSetting,
              ),
            ),
            const SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MySizedBox.height16,
                  ProfileSettingsTitle(titleKey: LangKeys.accountSettings),
                ],
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
