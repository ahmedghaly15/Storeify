import 'dart:convert';

import 'package:store_ify/core/api/dio_factory.dart';
import 'package:store_ify/core/helpers/secure_storage_helper.dart';
import 'package:store_ify/core/helpers/cache_keys.dart';
import 'package:store_ify/core/models/storeify_user.dart';

class AuthLocalDatasource {
  AuthLocalDatasource._();

  static Future<void> cacheUser(StoreifyUser user) async {
    await SecureStorageHelper.setSecuredString(
      CacheKeys.storeifyUser,
      json.encode(user.toJson()),
    );
  }

  static Future<void> cacheUserAndSetTokenIntoHeaders(StoreifyUser user) async {
    await cacheUser(user);
    DioFactory.setTokenIntoHeadersAfterLogin(user.token!);
  }

  static Future<StoreifyUser> getCachedUser() async {
    final cachedUser =
        await SecureStorageHelper.getSecuredString(CacheKeys.storeifyUser);
    final StoreifyUser user = StoreifyUser.fromJson(json.decode(cachedUser));
    return user;
  }
}
