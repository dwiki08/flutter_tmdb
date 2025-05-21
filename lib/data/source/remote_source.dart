import 'package:either_dart/either.dart';
import 'package:movie_db/data/source/remote/dio_client.dart';
import 'package:movie_db/data/source/remote/response/movie_response.dart';
import 'package:movie_db/data/source/remote/response/movies_response.dart';
import 'package:movie_db/domain/model/error_result.dart';
import 'package:movie_db/domain/model/movie_model.dart';

abstract class RemoteDataSource {
  Future<Either<ErrorResult, List<Movie>>> getMovies(String sortBy);

  Future<Either<ErrorResult, Movie>> getMovie(int id);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final DioClient dioClient;

  RemoteDataSourceImpl({required this.dioClient});

  @override
  Future<Either<ErrorResult, List<Movie>>> getMovies(String sortBy) async {
    try {
      final response = await dioClient.dio.get(
        '/discover/movie',
        queryParameters: {
          'sort_by': sortBy,
        },
      );
      final listMovies =
          MoviesResponse.fromJson(response.data).results ?? List.empty();
      return Right(listMovies.map((e) => e.toMovie()).toList());
    } catch (e) {
      return Left(ErrorResult.createResult(e));
    }
  }

  @override
  Future<Either<ErrorResult, Movie>> getMovie(int id) async {
    try {
      final response = await dioClient.dio.get(
        '/movie/$id',
      );
      return Right(MovieResponse.fromJson(response.data).toMovie());
    } catch (e) {
      return Left(ErrorResult.createResult(e));
    }
  }
}
