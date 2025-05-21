import 'package:json_annotation/json_annotation.dart';
import 'package:movie_db/data/source/remote/response/genre_response.dart';
import 'package:movie_db/domain/model/genre_model.dart';
import 'package:movie_db/domain/model/movie_model.dart';

part 'movie_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieResponse {
  final int? id;
  final String? posterPath;
  final String? backdropPath;
  final String? title;
  final String? overview;
  final String? releaseDate;
  final String? originalLanguage;
  final double? voteAverage;
  final int? voteCount;
  final List<GenreResponse>? genres;

  MovieResponse({
    this.id,
    this.posterPath,
    this.backdropPath,
    this.title,
    this.overview,
    this.releaseDate,
    this.originalLanguage,
    this.voteAverage,
    this.voteCount,
    this.genres,
  });

  factory MovieResponse.fromJson(dynamic json) => _$MovieResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);
}

extension MovieResponseMapper on MovieResponse {
  Movie toMovie() {
    List<Genre> genres = [];
    if (this.genres != null) {
      genres = this.genres!.map((i) => i.toGenre()).toList();
    }
    return Movie(
      id: id ?? 0,
      title: title ?? '',
      posterUrl: posterPath ?? '',
      backdropUrl: backdropPath ?? '',
      overview: overview ?? '',
      releaseDate: releaseDate ?? '',
      language: originalLanguage ?? '',
      voteRate: voteAverage ?? 0.0,
      voteCount: voteCount ?? 0,
      genres: genres,
    );
  }
}
