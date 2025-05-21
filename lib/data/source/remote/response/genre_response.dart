import 'package:json_annotation/json_annotation.dart';
import 'package:movie_db/domain/model/genre_model.dart';

part 'genre_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GenreResponse {
  final int? id;
  final String? name;

  GenreResponse({this.id, this.name});

  factory GenreResponse.fromJson(Map<String, dynamic> json) => _$GenreResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GenreResponseToJson(this);
}

extension GenreResponseMapper on GenreResponse {
  Genre toGenre() {
    return Genre(id: id ?? 0, name: name ?? '');
  }
}