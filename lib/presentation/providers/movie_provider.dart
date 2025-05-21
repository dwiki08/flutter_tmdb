import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/providers/use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/model/sort_by.dart';

part 'movie_provider.g.dart';

@riverpod
Future<Movie?> getMovie(Ref ref, {required int id}) async {
  final movieUseCase = ref.read(movieUseCaseProvider);
  final result = await movieUseCase.getMovie(id);
  return result.fold((e) => throw e, (m) => m);
}

@Riverpod(keepAlive: false)
Future<List<Movie>> getMovies(Ref ref, {required SortBy sortBy}) async {
  final movieUseCase = ref.read(movieUseCaseProvider);
  await Future.delayed(const Duration(seconds: 2));
  final result = await movieUseCase.getMovies(sortBy);
  return result.fold((e) => throw e, (m) => m);
}