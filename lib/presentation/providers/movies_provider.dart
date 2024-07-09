import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/domain/model/sort_by.dart';
import 'package:movie_db/domain/use_case/movie_use_case.dart';
import 'package:movie_db/providers/use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movies_provider.g.dart';

@riverpod
class MoviesState extends _$MoviesState {
  late MovieUseCase movieUseCase;

  @override
  FutureOr<List<Movie>> build({required SortBy sortBy}) async {
    movieUseCase = ref.read(movieUseCaseProvider);
    final result = await movieUseCase.getMovies(sortBy);
    return result.fold((e) => throw e, (m) => m);
  }

  Future<void> getMovies(SortBy sortBy) async {
    state = const AsyncLoading();
    await Future.delayed(const Duration(seconds: 2));
    final result = await movieUseCase.getMovies(sortBy);
    result.fold((e) => throw e, (m) => state = AsyncData(m));
  }
}
