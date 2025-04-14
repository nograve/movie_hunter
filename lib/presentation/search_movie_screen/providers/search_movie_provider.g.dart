// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchMovieHash() => r'16866bf3d94c4090c11bb0596368077448da348f';

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

/// See also [searchMovie].
@ProviderFor(searchMovie)
const searchMovieProvider = SearchMovieFamily();

/// See also [searchMovie].
class SearchMovieFamily extends Family<AsyncValue<Result<List<Movie>>>> {
  /// See also [searchMovie].
  const SearchMovieFamily();

  /// See also [searchMovie].
  SearchMovieProvider call(String query, int page) {
    return SearchMovieProvider(query, page);
  }

  @override
  SearchMovieProvider getProviderOverride(
    covariant SearchMovieProvider provider,
  ) {
    return call(provider.query, provider.page);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchMovieProvider';
}

/// See also [searchMovie].
class SearchMovieProvider
    extends AutoDisposeFutureProvider<Result<List<Movie>>> {
  /// See also [searchMovie].
  SearchMovieProvider(String query, int page)
    : this._internal(
        (ref) => searchMovie(ref as SearchMovieRef, query, page),
        from: searchMovieProvider,
        name: r'searchMovieProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$searchMovieHash,
        dependencies: SearchMovieFamily._dependencies,
        allTransitiveDependencies: SearchMovieFamily._allTransitiveDependencies,
        query: query,
        page: page,
      );

  SearchMovieProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.page,
  }) : super.internal();

  final String query;
  final int page;

  @override
  Override overrideWith(
    FutureOr<Result<List<Movie>>> Function(SearchMovieRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchMovieProvider._internal(
        (ref) => create(ref as SearchMovieRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Result<List<Movie>>> createElement() {
    return _SearchMovieProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchMovieProvider &&
        other.query == query &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchMovieRef on AutoDisposeFutureProviderRef<Result<List<Movie>>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `page` of this provider.
  int get page;
}

class _SearchMovieProviderElement
    extends AutoDisposeFutureProviderElement<Result<List<Movie>>>
    with SearchMovieRef {
  _SearchMovieProviderElement(super.provider);

  @override
  String get query => (origin as SearchMovieProvider).query;
  @override
  int get page => (origin as SearchMovieProvider).page;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
