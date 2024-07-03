import 'package:either_dart/either.dart';
import 'package:movie_db/domain/model/error_result.dart';
import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/domain/model/sort_by.dart';

abstract class MovieRepository {
  Future<Either<ErrorResult, List<Movie>>> getMovies(SortBy sortBy);

  Future<Either<ErrorResult, Movie>> getMovie(int id);
}
