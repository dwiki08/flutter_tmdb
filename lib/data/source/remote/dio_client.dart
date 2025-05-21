import 'package:dio/dio.dart';
import 'package:movie_db/utils/constants.dart';

class DioClient {
  final Dio dio;

  DioClient({String apiVersion = '/3'})
      : dio = Dio(
          BaseOptions(
              baseUrl: baseUrl + apiVersion,
              connectTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 10),
              validateStatus: (status) =>
                  status != null && status >= 200 && status < 300,
              headers: {'Authorization': 'Bearer $accessToken'}),
        );
}
