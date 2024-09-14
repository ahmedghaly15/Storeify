import 'dart:convert';

import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/models/storeify_user.dart';

class AuthLocalDatasource {
  AuthLocalDatasource._();

  static Future<void> cacheUser(StoreifyUser user) async {
    await SharedPrefHelper.setSecuredString(
      SharedPrefKeys.storeifyUser,
      json.encode(user.toJson()),
    );
  }

  static Future<StoreifyUser> getCachedUserToken() async {
    final cachedUser =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.storeifyUser);
    final StoreifyUser user = StoreifyUser.fromJson(json.decode(cachedUser));
    return user;
  }
}
