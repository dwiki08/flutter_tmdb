import 'package:either_dart/either.dart';
import 'package:movie_db/data/source/remote_source.dart';
import 'package:movie_db/domain/model/error_result.dart';
import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/domain/model/sort_by.dart';
import 'package:movie_db/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final RemoteDataSource movieRemoteSource;

  MovieRepositoryImpl({required this.movieRemoteSource});

  @override
  Future<Either<ErrorResult, List<Movie>>> getMovies(SortBy sortKey) {
    return movieRemoteSource.getMovies(sortKey.key);
  }

  @override
  Future<Either<ErrorResult, Movie>> getMovie(int id) {
    return movieRemoteSource.getMovie(id);
  }
}
