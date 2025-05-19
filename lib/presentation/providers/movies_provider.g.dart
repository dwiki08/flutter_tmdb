// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$moviesStateHash() => r'4a229a4b51f66be5dd387abfcd24edf2811751a8';

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

abstract class _$MoviesState
    extends BuildlessAutoDisposeAsyncNotifier<List<Movie>> {
  late final SortBy sortBy;

  FutureOr<List<Movie>> build({
    required SortBy sortBy,
  });
}

/// See also [MoviesState].
@ProviderFor(MoviesState)
const moviesStateProvider = MoviesStateFamily();

/// See also [MoviesState].
class MoviesStateFamily extends Family<AsyncValue<List<Movie>>> {
  /// See also [MoviesState].
  const MoviesStateFamily();

  /// See also [MoviesState].
  MoviesStateProvider call({
    required SortBy sortBy,
  }) {
    return MoviesStateProvider(
      sortBy: sortBy,
    );
  }

  @override
  MoviesStateProvider getProviderOverride(
    covariant MoviesStateProvider provider,
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
  String? get name => r'moviesStateProvider';
}

/// See also [MoviesState].
class MoviesStateProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MoviesState, List<Movie>> {
  /// See also [MoviesState].
  MoviesStateProvider({
    required SortBy sortBy,
  }) : this._internal(
          () => MoviesState()..sortBy = sortBy,
          from: moviesStateProvider,
          name: r'moviesStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$moviesStateHash,
          dependencies: MoviesStateFamily._dependencies,
          allTransitiveDependencies:
              MoviesStateFamily._allTransitiveDependencies,
          sortBy: sortBy,
        );

  MoviesStateProvider._internal(
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
  FutureOr<List<Movie>> runNotifierBuild(
    covariant MoviesState notifier,
  ) {
    return notifier.build(
      sortBy: sortBy,
    );
  }

  @override
  Override overrideWith(MoviesState Function() create) {
    return ProviderOverride(
      origin: this,
      override: MoviesStateProvider._internal(
        () => create()..sortBy = sortBy,
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
  AutoDisposeAsyncNotifierProviderElement<MoviesState, List<Movie>>
      createElement() {
    return _MoviesStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MoviesStateProvider && other.sortBy == sortBy;
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
mixin MoviesStateRef on AutoDisposeAsyncNotifierProviderRef<List<Movie>> {
  /// The parameter `sortBy` of this provider.
  SortBy get sortBy;
}

class _MoviesStateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MoviesState, List<Movie>>
    with MoviesStateRef {
  _MoviesStateProviderElement(super.provider);

  @override
  SortBy get sortBy => (origin as MoviesStateProvider).sortBy;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
