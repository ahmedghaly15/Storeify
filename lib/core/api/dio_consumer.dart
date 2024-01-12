import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:store_ify/core/api/api_consumer.dart';
import 'package:store_ify/core/api/app_interceptors.dart';
import 'package:store_ify/service_locator.dart';

class DioConsumer implements ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.interceptors.add(serviceLocator.get<AppInterceptors>());

    if (kDebugMode) {
      dio.interceptors.add(serviceLocator.get<LogInterceptor>());
    }
  }

  @override
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final Response response = await dio.get(
      path,
    );
    return response.data;
  }

  @override
  Future<dynamic> post(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) async {
    final Response response = await dio.post(
      path,
      queryParameters: queryParameters,
      data: data,
    );

    return response.data;
  }

  @override
  Future<dynamic> patch(
    String path, {
    required Map<String, dynamic> data,
  }) async {
    final Response response = await dio.patch(path, data: data);

    return response.data;
  }

  @override
  Future<dynamic> put(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) async {
    final response = await dio.put(
      path,
      queryParameters: queryParameters,
      data: data,
    );

    return response.data;
  }
}
