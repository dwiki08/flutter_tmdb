import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:movie_db/data/source/remote/response/movie_response.dart';
import 'package:movie_db/data/source/remote/response/movies_response.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: '/3')
abstract class ApiService extends ChopperService {
  static ApiService create([ChopperClient? client]) => _$ApiService(client);

  @GET(path: '/discover/movie')
  Future<Response<MoviesResponse>> getMovies(@Query('sort_by') String sortBy);

  @GET(path: '/movie/{movie_id}')
  Future<Response<MovieResponse>> getMovie(@Path('movie_id') int id);
}
