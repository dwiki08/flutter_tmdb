// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$movieStateHash() => r'9f7cdeac768da025e63a3323cfa17c30f0ff1ba3';

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

abstract class _$MovieState extends BuildlessAutoDisposeAsyncNotifier<Movie?> {
  late final int id;

  FutureOr<Movie?> build({
    required int id,
  });
}

/// See also [MovieState].
@ProviderFor(MovieState)
const movieStateProvider = MovieStateFamily();

/// See also [MovieState].
class MovieStateFamily extends Family<AsyncValue<Movie?>> {
  /// See also [MovieState].
  const MovieStateFamily();

  /// See also [MovieState].
  MovieStateProvider call({
    required int id,
  }) {
    return MovieStateProvider(
      id: id,
    );
  }

  @override
  MovieStateProvider getProviderOverride(
    covariant MovieStateProvider provider,
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
  String? get name => r'movieStateProvider';
}

/// See also [MovieState].
class MovieStateProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MovieState, Movie?> {
  /// See also [MovieState].
  MovieStateProvider({
    required int id,
  }) : this._internal(
          () => MovieState()..id = id,
          from: movieStateProvider,
          name: r'movieStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$movieStateHash,
          dependencies: MovieStateFamily._dependencies,
          allTransitiveDependencies:
              MovieStateFamily._allTransitiveDependencies,
          id: id,
        );

  MovieStateProvider._internal(
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
  FutureOr<Movie?> runNotifierBuild(
    covariant MovieState notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(MovieState Function() create) {
    return ProviderOverride(
      origin: this,
      override: MovieStateProvider._internal(
        () => create()..id = id,
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
  AutoDisposeAsyncNotifierProviderElement<MovieState, Movie?> createElement() {
    return _MovieStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MovieStateProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MovieStateRef on AutoDisposeAsyncNotifierProviderRef<Movie?> {
  /// The parameter `id` of this provider.
  int get id;
}

class _MovieStateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MovieState, Movie?>
    with MovieStateRef {
  _MovieStateProviderElement(super.provider);

  @override
  int get id => (origin as MovieStateProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
