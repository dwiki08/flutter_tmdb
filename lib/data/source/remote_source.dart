import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:movie_db/data/source/mapper/mapper_dto.dart';
import 'package:movie_db/data/source/remote/api_service.dart';
import 'package:movie_db/data/source/remote/response/movie_response.dart';
import 'package:movie_db/domain/model/error_result.dart';
import 'package:movie_db/domain/model/movie_model.dart';

abstract class RemoteDataSource {
  Future<Either<ErrorResult, List<Movie>>> getMovies(String sortBy);

  Future<Either<ErrorResult, Movie>> getMovie(int id);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiService apiService;

  RemoteDataSourceImpl({required this.apiService});

  @override
  Future<Either<ErrorResult, List<Movie>>> getMovies(String sortBy) async {
    try {
      final response = await apiService.getMovies(sortBy);
      if (response.isSuccessful) {
        List<MovieResponse> results = response.body?.results ?? List.empty();
        return Right(results.map((e) => e.toMovie()).toList());
      } else {
        throw HttpException(response.statusCode.toString());
      }
    } on Exception catch (e) {
      return Left(ErrorResult.createResult(e));
    }
  }

  @override
  Future<Either<ErrorResult, Movie>> getMovie(int id) async {
    try {
      final response = await apiService.getMovie(id);
      if (response.isSuccessful && response.body != null) {
        return Right(response.body!.toMovie());
      } else {
        throw HttpException(response.statusCode.toString());
      }
    } on Exception catch (e) {
      return Left(ErrorResult.createResult(e));
    }
  }
}
