import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/features/profile/data/models/change_api_lang_params.dart';
import 'package:store_ify/features/profile/data/repos/profile_repo.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;

  ProfileCubit(
    this._profileRepo,
  ) : super(ProfileState.initial());

  final CancelToken _cancelToken = CancelToken();

  void logout() async {
    emit(state.copyWith(
      status: ProfileStateStatus.logoutLoading,
    ));
    final result = await _profileRepo.logout();
    result.when(
      success: (_) async {
        await _removeCachedUser();
        emit(state.copyWith(
          status: ProfileStateStatus.logoutSuccess,
        ));
      },
      error: (error) => emit(state.copyWith(
        status: ProfileStateStatus.logoutError,
        error: error.error ?? '',
      )),
    );
  }

  Future<void> _removeCachedUser() async {
    await SharedPrefHelper.removeSecuredData(SharedPrefKeys.storeifyUser);
  }

  void deleteAccount() async {
    emit(state.copyWith(
      status: ProfileStateStatus.deleteAccountLoading,
    ));
    final result = await _profileRepo.deleteAccount(_cancelToken);
    result.when(
      success: (_) async {
        await _removeCachedUser();
        emit(state.copyWith(
          status: ProfileStateStatus.deleteAccountSuccess,
        ));
      },
      error: (error) => emit(state.copyWith(
        status: ProfileStateStatus.deleteAccountError,
        error: error.error ?? '',
      )),
    );
  }

  void toggleLocale(String langCode) {
    emit(state.copyWith(
      status: ProfileStateStatus.changeLocaleLocally,
      langCode: langCode,
    ));
  }

  void changeApiLang(String langCode) async {
    final result = await _profileRepo.changeApiLang(
      ChangeApiLangParams(lang: langCode),
    );
    result.when(
      success: (_) =>
          emit(state.copyWith(status: ProfileStateStatus.changeApiLangSuccess)),
      error: (error) => emit(
        state.copyWith(
          status: ProfileStateStatus.changeApiLangError,
          error: error.error ?? '',
        ),
      ),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
