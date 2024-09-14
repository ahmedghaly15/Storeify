import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';

Future<void> checkIfUserLoggedIn() async {
  final cachedUser =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.storeifyUser);
  if (cachedUser.nullOrEmpty) {
    isUserLoggedIn = false;
  } else {
    isUserLoggedIn = true;
  }
}
