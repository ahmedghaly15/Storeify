import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/theming_cubit.dart';
import 'package:store_ify/core/utils/functions/toggle_lang.dart';
import 'package:store_ify/core/widgets/cancel_outlined_button.dart';
import 'package:store_ify/core/widgets/custom_adaptive_dialog.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/widgets/confirm_delete_account_bloc_consumer.dart';
import 'package:store_ify/features/profile/presentation/widgets/confirm_logout_bloc_consumer_button.dart';
import 'package:store_ify/features/profile/presentation/widgets/dark_mode_switch_bloc_builder.dart';
import 'package:store_ify/features/profile/presentation/widgets/language_switch_bloc_consumer.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class SettingItem {
  final String titleKey;
  final Icon icon;
  final Widget? trailing;
  final void Function(BuildContext context) onTap;

  SettingItem({
    required this.titleKey,
    required this.onTap,
    this.icon = const Icon(
      Icons.arrow_forward_ios_rounded,
      color: Colors.white,
      size: 16.0,
    ),
    this.trailing,
  });

  static List<SettingItem> get profileAppSetting => [
        SettingItem(
          titleKey: LocaleKeys.darkMode,
          onTap: (context) => context.read<ThemingCubit>().toggleTheme(),
          trailing: const DarkModeSwitchBlocBuilder(),
        ),
        SettingItem(
          titleKey: LocaleKeys.arabic,
          onTap: (context) => toggleLang(context),
          trailing: const LanguageSwitchBlocConsumer(),
        ),
      ];
  static List<SettingItem> get profileAccountSettings => [
        SettingItem(
          titleKey: LocaleKeys.paymentMethod,
          onTap: (_) {},
        ),
        SettingItem(
          titleKey: LocaleKeys.logout,
          onTap: (context) {
            showAdaptiveDialog(
              context: context,
              barrierDismissible: true,
              barrierLabel: '',
              builder: (_) => BlocProvider.value(
                value: context.read<ProfileCubit>(),
                child: const CustomAdaptiveDialog(
                  contentText: LocaleKeys.sureToLogout,
                  actions: [
                    CancelOutlinedButton(),
                    MySizedBox.height10,
                    ConfirmLogoutBlocConsumerButton(),
                  ],
                ),
              ),
            );
          },
        ),
        SettingItem(
          titleKey: LocaleKeys.changePassword,
          onTap: (context) => context.pushRoute(const ChangePasswordRoute()),
        ),
        SettingItem(
          titleKey: LocaleKeys.deleteAccount,
          onTap: (context) => showAdaptiveDialog(
            context: context,
            barrierDismissible: true,
            barrierLabel: '',
            builder: (_) => BlocProvider.value(
              value: context.read<ProfileCubit>(),
              child: const CustomAdaptiveDialog(
                contentText: LocaleKeys.sureToLogout,
                actions: [
                  CancelOutlinedButton(),
                  MySizedBox.height10,
                  ConfirmDeleteAccountBlocConsumer(),
                ],
              ),
            ),
          ),
        ),
      ];
}
