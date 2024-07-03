import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_db/data/repository/movie_repository_impl.dart';
import 'package:movie_db/domain/repository/movie_repository.dart';
import 'package:movie_db/providers/data_source_provider.dart';

final movieRepositoryProvider = Provider<MovieRepository>((ref) {
  return MovieRepositoryImpl(
      movieRemoteSource: ref.read(movieRemoteSourceProvider));
});
