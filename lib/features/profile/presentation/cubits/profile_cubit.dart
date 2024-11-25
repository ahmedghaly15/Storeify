import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/features/profile/data/repos/profile_repo.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;

  ProfileCubit(
    this._profileRepo,
  ) : super(const ProfileState.initial());

  final CancelToken _cancelToken = CancelToken();

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

  void deleteAccount() async {
    emit(const ProfileState.deleteAccountLoading());
    final result = await _profileRepo.deleteAccount(_cancelToken);
    result.when(
      success: (_) async {
        await _removeCachedUser();
        emit(const ProfileState.deleteAccountSuccess());
      },
      error: (error) =>
          emit(ProfileState.deleteAccountError(error.error ?? '')),
    );
  }

  // void changeApiLang(String langCode) async {
  //   final result = await _localeRepo.changeApiLang(
  //     ChangeApiLangParams(lang: langCode),
  //   );
  //   result.when(
  //     success: (_) => emit(
  //         state.copyWith(status: LocaleStateStatus.changeApiLocaleSuccess)),
  //     error: (error) => emit(
  //       state.copyWith(
  //         status: LocaleStateStatus.changeApiLocaleFailure,
  //         error: error.error ?? '',
  //       ),
  //     ),
  //   );
  // }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
