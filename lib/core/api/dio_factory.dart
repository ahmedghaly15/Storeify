import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/helpers/secure_storage_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/auth/data/datasources/auth_local_datasource.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? _dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (_dio == null) {
      _dio = Dio();
      _dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      _addDioHeaders();
      _addDioLoggerInterceptor();
      return _dio!;
    } else {
      return _dio!;
    }
  }

  static void _addDioLoggerInterceptor() {
    _dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static void _addDioHeaders() async {
    final cachedUser =
        await SecureStorageHelper.getSecuredString(SharedPrefKeys.storeifyUser);

    if (cachedUser.nullOrEmpty == false) {
      final StoreifyUser user = await AuthLocalDatasource.getCachedUser();
      _dio?.options.headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${user.token}',
      };
    }
  }

  static void setTokenIntoHeadersAfterLogin(String token) {
    _dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }
}
