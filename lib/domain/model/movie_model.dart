import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_db/domain/model/genre_model.dart';

part 'movie_model.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String posterUrl,
    required String backdropUrl,
    required String title,
    required String overview,
    required String releaseDate,
    required String language,
    required double voteRate,
    required int voteCount,
    required List<Genre> genres,
  }) = _Movie;
}

const emptyMovie = Movie(id: 0,
    posterUrl: '',
    backdropUrl: '',
    title: '',
    overview: '',
    releaseDate: '',
    language: '',
    voteRate: 0,
    voteCount: 0,
    genres: []);