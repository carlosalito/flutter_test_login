import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class HttpClient {
  late Dio dio;

  HttpClient() {
    dio = Dio();
  }

  Future<Response<T>> httpGet<T>(String endpoint) {
    try {
      return dio.get<T>(endpoint);
    } catch (e) {
      throw e;
    }
  }
}
