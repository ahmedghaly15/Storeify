import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/helpers/secure_storage_helper.dart';
import 'package:store_ify/core/helpers/cache_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/auth/data/datasources/auth_local_datasource.dart';

Future<void> checkIfUserIsLoggedIn() async {
  final cachedUser =
      await SecureStorageHelper.getSecuredString(CacheKeys.storeifyUser);
  if (cachedUser.isNullOrEmpty) {
    isUserLoggedIn = false;
  } else {
    isUserLoggedIn = true;
    currentUser = await AuthLocalDatasource.getCachedUser();
  }
}
