import 'package:chopper/chopper.dart';
import 'package:movie_db/data/source/remote/api_service.dart';
import 'package:movie_db/data/source/remote/header_interceptor.dart';
import 'package:movie_db/data/source/remote/json_converter.dart';
import 'package:movie_db/data/source/remote/response/movie_response.dart';
import 'package:movie_db/data/source/remote/response/movies_response.dart';
import 'package:movie_db/utils/constants.dart';

final chopperClient = ChopperClient(
  baseUrl: Uri.parse(baseUrl),
  services: [ApiService.create()],
  converter: JsonToTypeConverter({
    MoviesResponse: (jsonData) => MoviesResponse.fromJson(jsonData),
    MovieResponse: (jsonData) => MovieResponse.fromJson(jsonData),
  }),
  interceptors: [
    HeaderInterceptor(accessToken),
  ],
);
