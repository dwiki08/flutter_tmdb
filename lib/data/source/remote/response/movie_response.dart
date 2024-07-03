import 'package:json_annotation/json_annotation.dart';
import 'package:movie_db/data/source/remote/response/genre_response.dart';

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
