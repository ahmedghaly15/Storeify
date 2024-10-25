import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/features/profile/data/models/change_password_params.dart';
import 'package:store_ify/features/profile/data/models/setting_item.dart';
import 'package:store_ify/features/profile/data/repos/profile_repo.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_state.dart';
import 'package:store_ify/features/profile/presentation/widgets/custom_logout_adaptive_dialog.dart';
import 'package:store_ify/features/profile/presentation/widgets/dark_mode_switch_bloc_builder.dart';
import 'package:store_ify/features/profile/presentation/widgets/language_switch_bloc_consumer.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;

  ProfileCubit(
    this._profileRepo,
  ) : super(const ProfileState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();

  late final GlobalKey<FormState> formKey;
  late final TextEditingController passController;
  late final TextEditingController newPassController;
  late final TextEditingController confirmPassController;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    _initFormControllers();
  }

  void _initFormControllers() {
    passController = TextEditingController();
    newPassController = TextEditingController();
    confirmPassController = TextEditingController();
  }

  void _disposeFormControllers() {
    passController.dispose();
    newPassController.dispose();
    confirmPassController.dispose();
  }

  void logout() async {
    emit(const ProfileState.logoutLoading());
    final result = await _profileRepo.logout();
    result.when(
      success: (_) async {
        await _removeCachedUser();
        emit(const ProfileState.logoutSuccess());
      },
      error: (error) => emit(ProfileState.logoutError(error.error ?? '')),
    );
  }

  Future<void> _removeCachedUser() async {
    await SharedPrefHelper.removeSecuredData(SharedPrefKeys.storeifyUser);
  }

  void changePassword() async {
    emit(const ProfileState.changePasswordLoading());
    final params = ChangePasswordParams(
      currentPassword: passController.text,
      password: newPassController.text,
      passwordConfirmation: confirmPassController.text,
    );
    final result = await _profileRepo.changePassword(params, _cancelToken);
    result.when(
      success: (_) => emit(const ProfileState.changePasswordSuccess()),
      error: (error) =>
          emit(ProfileState.changePasswordError(error.error ?? '')),
    );
  }

  List<SettingItem> profileAppSetting(BuildContext context) => [
        SettingItem(
          titleKey: LangKeys.favorite,
          onTap: () => context.pushRoute(const FavoritesRoute()),
        ),
        const SettingItem(
          titleKey: LangKeys.darkMode,
          trailing: DarkModeSwitchBlocBuilder(),
        ),
        SettingItem(
          titleKey: LangKeys.myOrders,
          onTap: () => context.pushRoute(const CartRoute()),
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

  @override
  Future<void> close() {
    _disposeFormControllers();
    _cancelToken.cancel();
    return super.close();
  }
}
