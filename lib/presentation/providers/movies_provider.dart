import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/domain/model/sort_by.dart';
import 'package:movie_db/domain/repository/movie_repository.dart';
import 'package:movie_db/providers/repository_provider.dart';

class MoviesNotifier extends StateNotifier<AsyncValue<List<Movie>>> {
  MoviesNotifier(this._movieRepository) : super(const AsyncData([]));

  final MovieRepository _movieRepository;

  void getRemoteMovies(SortBy sortBy) async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 2));
    final result = await _movieRepository.getMovies(sortBy);
    result.fold((e) {
      state = AsyncValue.error(e, StackTrace.current);
    }, (data) {
      state = AsyncValue.data(data);
    });
  }
}

final moviesProvider =
    StateNotifierProvider<MoviesNotifier, AsyncValue<List<Movie>>>(
        (ref) => MoviesNotifier(ref.read(movieRepositoryProvider)));
