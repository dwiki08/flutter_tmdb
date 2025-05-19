// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ApiService extends ApiService {
  _$ApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ApiService;

  @override
  Future<Response<MoviesResponse>> getMovies(String sortBy) {
    final Uri $url = Uri.parse('/3/discover/movie');
    final Map<String, dynamic> $params = <String, dynamic>{'sort_by': sortBy};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<MoviesResponse, MoviesResponse>($request);
  }

  @override
  Future<Response<MovieResponse>> getMovie(int id) {
    final Uri $url = Uri.parse('/3/movie/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<MovieResponse, MovieResponse>($request);
  }
}
