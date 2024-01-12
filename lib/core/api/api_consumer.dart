abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> post(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  });

  Future<dynamic> put(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  });

  Future<dynamic> patch(
    String path, {
    required Map<String, dynamic> data,
  });
}
