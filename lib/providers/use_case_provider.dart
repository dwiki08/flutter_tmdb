import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_db/domain/use_case/movie_use_case.dart';
import 'package:movie_db/providers/repository_provider.dart';

final movieUseCaseProvider = Provider<MovieUseCase>((ref) {
  return MovieUseCaseImpl(movieRepository: ref.read(movieRepositoryProvider));
});
