import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/locale/models/change_api_lang_params.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';

abstract class LocaleRepo {
  Future<String> getSavedLang();
  Future<bool> changeLang(String langCode);
  Future<ApiResult<void>> changeApiLang(ChangeApiLangParams params);
}

class LocaleRepoImpl implements LocaleRepo {
  final ApiService _apiService;

  const LocaleRepoImpl(this._apiService);

  @override
  Future<bool> changeLang(String langCode) async {
    await SharedPrefHelper.removeData(SharedPrefKeys.locale);
    return await SharedPrefHelper.setData(SharedPrefKeys.locale, langCode);
  }

  @override
  Future<String> getSavedLang() async {
    final savedLang = await SharedPrefHelper.getString(SharedPrefKeys.locale);
    return savedLang.nullOrEmpty ? AppStrings.englishLangCode : savedLang;
  }

  @override
  Future<ApiResult<void>> changeApiLang(ChangeApiLangParams params) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.changeApiLang(params),
    );
  }
}
