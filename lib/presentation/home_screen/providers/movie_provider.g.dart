// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$moviesHash() => r'bd3363a64b1d5ab3bb6834bab40513461b49310f';

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

/// See also [movies].
@ProviderFor(movies)
const moviesProvider = MoviesFamily();

/// See also [movies].
class MoviesFamily extends Family<AsyncValue<Result<List<Movie>>>> {
  /// See also [movies].
  const MoviesFamily();

  /// See also [movies].
  MoviesProvider call(int page) {
    return MoviesProvider(page);
  }

  @override
  MoviesProvider getProviderOverride(covariant MoviesProvider provider) {
    return call(provider.page);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'moviesProvider';
}

/// See also [movies].
class MoviesProvider extends AutoDisposeFutureProvider<Result<List<Movie>>> {
  /// See also [movies].
  MoviesProvider(int page)
    : this._internal(
        (ref) => movies(ref as MoviesRef, page),
        from: moviesProvider,
        name: r'moviesProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product') ? null : _$moviesHash,
        dependencies: MoviesFamily._dependencies,
        allTransitiveDependencies: MoviesFamily._allTransitiveDependencies,
        page: page,
      );

  MoviesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<Result<List<Movie>>> Function(MoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MoviesProvider._internal(
        (ref) => create(ref as MoviesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Result<List<Movie>>> createElement() {
    return _MoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MoviesProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MoviesRef on AutoDisposeFutureProviderRef<Result<List<Movie>>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _MoviesProviderElement
    extends AutoDisposeFutureProviderElement<Result<List<Movie>>>
    with MoviesRef {
  _MoviesProviderElement(super.provider);

  @override
  int get page => (origin as MoviesProvider).page;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
