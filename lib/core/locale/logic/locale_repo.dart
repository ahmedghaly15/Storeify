import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/utils/app_strings.dart';

class LocaleRepo {
  const LocaleRepo();

  Future<bool> changeLang(String langCode) async {
    await SharedPrefHelper.removeData(SharedPrefKeys.locale);
    return await SharedPrefHelper.setData(SharedPrefKeys.locale, langCode);
  }

  Future<String> getSavedLang() async {
    final savedLang = await SharedPrefHelper.getString(SharedPrefKeys.locale);
    return savedLang.nullOrEmpty ? AppStrings.englishLangCode : savedLang;
  }
}
