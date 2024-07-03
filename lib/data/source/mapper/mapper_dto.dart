import 'package:movie_db/data/source/remote/response/genre_response.dart';
import 'package:movie_db/data/source/remote/response/movie_response.dart';
import 'package:movie_db/domain/model/genre_model.dart';
import 'package:movie_db/domain/model/movie_model.dart';

extension MovieMapper on MovieResponse {
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

extension GenreMapper on GenreResponse {
  Genre toGenre() {
    return Genre(id: id ?? 0, name: name ?? '');
  }
}
