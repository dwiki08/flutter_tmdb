// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Movie {
  int get id;
  String get posterUrl;
  String get backdropUrl;
  String get title;
  String get overview;
  String get releaseDate;
  String get language;
  double get voteRate;
  int get voteCount;
  List<Genre> get genres;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieCopyWith<Movie> get copyWith =>
      _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl) &&
            (identical(other.backdropUrl, backdropUrl) ||
                other.backdropUrl == backdropUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.voteRate, voteRate) ||
                other.voteRate == voteRate) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            const DeepCollectionEquality().equals(other.genres, genres));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      posterUrl,
      backdropUrl,
      title,
      overview,
      releaseDate,
      language,
      voteRate,
      voteCount,
      const DeepCollectionEquality().hash(genres));

  @override
  String toString() {
    return 'Movie(id: $id, posterUrl: $posterUrl, backdropUrl: $backdropUrl, title: $title, overview: $overview, releaseDate: $releaseDate, language: $language, voteRate: $voteRate, voteCount: $voteCount, genres: $genres)';
  }
}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) =
      _$MovieCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String posterUrl,
      String backdropUrl,
      String title,
      String overview,
      String releaseDate,
      String language,
      double voteRate,
      int voteCount,
      List<Genre> genres});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._self, this._then);

  final Movie _self;
  final $Res Function(Movie) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? posterUrl = null,
    Object? backdropUrl = null,
    Object? title = null,
    Object? overview = null,
    Object? releaseDate = null,
    Object? language = null,
    Object? voteRate = null,
    Object? voteCount = null,
    Object? genres = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterUrl: null == posterUrl
          ? _self.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backdropUrl: null == backdropUrl
          ? _self.backdropUrl
          : backdropUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      voteRate: null == voteRate
          ? _self.voteRate
          : voteRate // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _self.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _self.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc

class _Movie implements Movie {
  const _Movie(
      {required this.id,
      required this.posterUrl,
      required this.backdropUrl,
      required this.title,
      required this.overview,
      required this.releaseDate,
      required this.language,
      required this.voteRate,
      required this.voteCount,
      required final List<Genre> genres})
      : _genres = genres;

  @override
  final int id;
  @override
  final String posterUrl;
  @override
  final String backdropUrl;
  @override
  final String title;
  @override
  final String overview;
  @override
  final String releaseDate;
  @override
  final String language;
  @override
  final double voteRate;
  @override
  final int voteCount;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl) &&
            (identical(other.backdropUrl, backdropUrl) ||
                other.backdropUrl == backdropUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.voteRate, voteRate) ||
                other.voteRate == voteRate) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      posterUrl,
      backdropUrl,
      title,
      overview,
      releaseDate,
      language,
      voteRate,
      voteCount,
      const DeepCollectionEquality().hash(_genres));

  @override
  String toString() {
    return 'Movie(id: $id, posterUrl: $posterUrl, backdropUrl: $backdropUrl, title: $title, overview: $overview, releaseDate: $releaseDate, language: $language, voteRate: $voteRate, voteCount: $voteCount, genres: $genres)';
  }
}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) =
      __$MovieCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String posterUrl,
      String backdropUrl,
      String title,
      String overview,
      String releaseDate,
      String language,
      double voteRate,
      int voteCount,
      List<Genre> genres});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(this._self, this._then);

  final _Movie _self;
  final $Res Function(_Movie) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? posterUrl = null,
    Object? backdropUrl = null,
    Object? title = null,
    Object? overview = null,
    Object? releaseDate = null,
    Object? language = null,
    Object? voteRate = null,
    Object? voteCount = null,
    Object? genres = null,
  }) {
    return _then(_Movie(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterUrl: null == posterUrl
          ? _self.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backdropUrl: null == backdropUrl
          ? _self.backdropUrl
          : backdropUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      voteRate: null == voteRate
          ? _self.voteRate
          : voteRate // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _self.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _self._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

// dart format on
