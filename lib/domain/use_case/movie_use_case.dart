import 'package:either_dart/either.dart';
import 'package:movie_db/domain/model/error_result.dart';
import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/domain/model/sort_by.dart';
import 'package:movie_db/domain/repository/movie_repository.dart';

abstract class MovieUseCase {
  Future<Either<ErrorResult, List<Movie>>> getMovies(SortBy sortBy);

  Future<Either<ErrorResult, Movie>> getMovie(int id);
}

class MovieUseCaseImpl implements MovieUseCase {
  final MovieRepository movieRepository;

  MovieUseCaseImpl({required this.movieRepository});

  @override
  Future<Either<ErrorResult, List<Movie>>> getMovies(SortBy sortBy) {
    return movieRepository.getMovies(sortBy);
  }

  @override
  Future<Either<ErrorResult, Movie>> getMovie(int id) {
    return movieRepository.getMovie(id);
  }
}
