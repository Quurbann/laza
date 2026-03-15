import 'package:dio/dio.dart';

class DioClient {
  static Dio get instance {
    return Dio(BaseOptions(
      baseUrl: 'https://dummyjson.com/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ));
  }
}