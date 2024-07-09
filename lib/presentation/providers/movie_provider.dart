import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/domain/use_case/movie_use_case.dart';
import 'package:movie_db/providers/use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_provider.g.dart';

@riverpod
class MovieState extends _$MovieState {
  late MovieUseCase movieUseCase;

  @override
  FutureOr<Movie?> build({required int id}) async {
    movieUseCase = ref.read(movieUseCaseProvider);
    final result = await movieUseCase.getMovie(id);
    return result.fold((e) => throw e, (m) => m);
  }

  Future<void> getMovie(int id) async {
    state = const AsyncLoading();
    final result = await movieUseCase.getMovie(id);
    result.fold((e) => throw e, (m) => state = AsyncData(m));
  }
}
