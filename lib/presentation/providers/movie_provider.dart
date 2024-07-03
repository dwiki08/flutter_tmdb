import 'package:either_dart/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/domain/use_case/movie_use_case.dart';
import 'package:movie_db/providers/use_case_provider.dart';

class MovieProvider extends StateNotifier<AsyncValue<Movie?>> {
  MovieProvider({required this.movieUseCase}) : super(const AsyncData(null));

  final MovieUseCase movieUseCase;

  void getMovie(int id) {
    state = const AsyncValue.loading();
    final result = movieUseCase.getMovie(id);
    result.fold((e) {
      state = AsyncValue.error(e, StackTrace.current);
    }, (data) {
      state = AsyncValue.data(data);
    });
  }
}

final movieProvider = StateNotifierProvider<MovieProvider, AsyncValue<Movie?>>(
    (ref) => MovieProvider(movieUseCase: ref.read(movieUseCaseProvider)));
