import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/widgets/cancel_outlined_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/widgets/confirm_logout_bloc_consumer_button.dart';
import 'package:store_ify/core/widgets/custom_adaptive_dialog.dart';
import 'package:store_ify/features/profile/presentation/widgets/dark_mode_switch_bloc_builder.dart';
import 'package:store_ify/features/profile/presentation/widgets/language_switch_bloc_consumer.dart';

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
          titleKey: LangKeys.favorite,
          onTap: (context) => context.pushRoute(const FavoritesRoute()),
        ),
        SettingItem(
          titleKey: LangKeys.darkMode,
          onTap: (_) {},
          trailing: const DarkModeSwitchBlocBuilder(),
        ),
        SettingItem(
          titleKey: LangKeys.myOrders,
          onTap: (context) => context.pushRoute(const CartRoute()),
        ),
        SettingItem(
          titleKey: LangKeys.arabic,
          onTap: (_) {},
          trailing: const LanguageSwitchBlocConsumer(),
        ),
      ];
  static List<SettingItem> get profileAccountSettings => [
        SettingItem(
          titleKey: LangKeys.paymentMethod,
          onTap: (_) {},
        ),
        SettingItem(
          titleKey: LangKeys.logout,
          onTap: (context) {
            showAdaptiveDialog(
              context: context,
              barrierDismissible: true,
              barrierLabel: '',
              builder: (_) => BlocProvider.value(
                value: context.read<ProfileCubit>(),
                child: const CustomAdaptiveDialog(
                  contentText: LangKeys.sureToLogout,
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
          titleKey: LangKeys.changePassword,
          onTap: (context) => context.pushRoute(const ChangePasswordRoute()),
        ),
      ];
}
