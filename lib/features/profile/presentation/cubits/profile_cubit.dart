import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/widgets/custom_adaptive_switch.dart';
import 'package:store_ify/features/profile/data/models/setting_item.dart';
import 'package:store_ify/features/profile/data/repos/profile_repo.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_state.dart';
import 'package:store_ify/features/profile/presentation/widgets/custom_logout_adaptive_dialog.dart';
import 'package:store_ify/features/profile/presentation/widgets/language_switch_bloc_consumer.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;

  ProfileCubit(
    this._profileRepo,
  ) : super(const ProfileState.initial());

  void logout() async {
    emit(const ProfileState.logoutLoading());
    final result = await _profileRepo.logout();
    result.when(
      success: (_) async {
        await _removeUserToken();
        emit(const ProfileState.logoutSuccess());
      },
      error: (error) => emit(ProfileState.logoutError(error.error ?? '')),
    );
  }

  Future<void> _removeUserToken() async {
    await SharedPrefHelper.removeSecuredData(SharedPrefKeys.userToken);
  }

  List<SettingItem> profileAppSetting(BuildContext context) => [
        SettingItem(
          titleKey: LangKeys.favorite,
          onTap: () {
            context.pushRoute(const FavoritesRoute());
          },
        ),
        SettingItem(
          titleKey: LangKeys.darkMode,
          trailing: CustomAdaptiveSwitch(
            value: true,
            onChanged: (val) {},
          ),
        ),
        SettingItem(
          titleKey: LangKeys.myOrders,
          onTap: () {
            context.pushRoute(const CartRoute());
          },
        ),
        const SettingItem(
          titleKey: LangKeys.arabic,
          trailing: LanguageSwitchBlocConsumer(),
        ),
      ];
  List<SettingItem> profileAccountSettings(BuildContext context) => [
        SettingItem(
          titleKey: LangKeys.paymentMethod,
          onTap: () {},
        ),
        SettingItem(
          titleKey: LangKeys.logout,
          onTap: () {
            showAdaptiveDialog(
              context: context,
              barrierDismissible: true,
              barrierLabel: '',
              builder: (_) => BlocProvider.value(
                value: this,
                child: const CustomLogoutAdaptiveDialog(),
              ),
            );
          },
        ),
      ];
}
