import 'package:movie_db/data/source/remote/response/movie_response.dart';

class MoviesResponse {
  MoviesResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  MoviesResponse.fromJson(dynamic json) {
    page = json['page'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(MovieResponse.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  num? page;
  List<MovieResponse>? results;
  num? totalPages;
  num? totalResults;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }
}
