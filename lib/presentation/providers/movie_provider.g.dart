// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMovieHash() => r'222eb0103dcc4b52ff494a7acd7326efc8ceef39';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getMovie].
@ProviderFor(getMovie)
const getMovieProvider = GetMovieFamily();

/// See also [getMovie].
class GetMovieFamily extends Family<AsyncValue<Movie?>> {
  /// See also [getMovie].
  const GetMovieFamily();

  /// See also [getMovie].
  GetMovieProvider call({
    required int id,
  }) {
    return GetMovieProvider(
      id: id,
    );
  }

  @override
  GetMovieProvider getProviderOverride(
    covariant GetMovieProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getMovieProvider';
}

/// See also [getMovie].
class GetMovieProvider extends AutoDisposeFutureProvider<Movie?> {
  /// See also [getMovie].
  GetMovieProvider({
    required int id,
  }) : this._internal(
          (ref) => getMovie(
            ref as GetMovieRef,
            id: id,
          ),
          from: getMovieProvider,
          name: r'getMovieProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMovieHash,
          dependencies: GetMovieFamily._dependencies,
          allTransitiveDependencies: GetMovieFamily._allTransitiveDependencies,
          id: id,
        );

  GetMovieProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Movie?> Function(GetMovieRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMovieProvider._internal(
        (ref) => create(ref as GetMovieRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Movie?> createElement() {
    return _GetMovieProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMovieProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetMovieRef on AutoDisposeFutureProviderRef<Movie?> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetMovieProviderElement extends AutoDisposeFutureProviderElement<Movie?>
    with GetMovieRef {
  _GetMovieProviderElement(super.provider);

  @override
  int get id => (origin as GetMovieProvider).id;
}

String _$getMoviesHash() => r'5dec966ab3776c9cd1fb29c673c956094d04ee90';

/// See also [getMovies].
@ProviderFor(getMovies)
const getMoviesProvider = GetMoviesFamily();

/// See also [getMovies].
class GetMoviesFamily extends Family<AsyncValue<List<Movie>>> {
  /// See also [getMovies].
  const GetMoviesFamily();

  /// See also [getMovies].
  GetMoviesProvider call({
    required SortBy sortBy,
  }) {
    return GetMoviesProvider(
      sortBy: sortBy,
    );
  }

  @override
  GetMoviesProvider getProviderOverride(
    covariant GetMoviesProvider provider,
  ) {
    return call(
      sortBy: provider.sortBy,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getMoviesProvider';
}

/// See also [getMovies].
class GetMoviesProvider extends AutoDisposeFutureProvider<List<Movie>> {
  /// See also [getMovies].
  GetMoviesProvider({
    required SortBy sortBy,
  }) : this._internal(
          (ref) => getMovies(
            ref as GetMoviesRef,
            sortBy: sortBy,
          ),
          from: getMoviesProvider,
          name: r'getMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMoviesHash,
          dependencies: GetMoviesFamily._dependencies,
          allTransitiveDependencies: GetMoviesFamily._allTransitiveDependencies,
          sortBy: sortBy,
        );

  GetMoviesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sortBy,
  }) : super.internal();

  final SortBy sortBy;

  @override
  Override overrideWith(
    FutureOr<List<Movie>> Function(GetMoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMoviesProvider._internal(
        (ref) => create(ref as GetMoviesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sortBy: sortBy,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Movie>> createElement() {
    return _GetMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMoviesProvider && other.sortBy == sortBy;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sortBy.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetMoviesRef on AutoDisposeFutureProviderRef<List<Movie>> {
  /// The parameter `sortBy` of this provider.
  SortBy get sortBy;
}

class _GetMoviesProviderElement
    extends AutoDisposeFutureProviderElement<List<Movie>> with GetMoviesRef {
  _GetMoviesProviderElement(super.provider);

  @override
  SortBy get sortBy => (origin as GetMoviesProvider).sortBy;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
