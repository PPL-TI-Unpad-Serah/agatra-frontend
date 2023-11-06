// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arcade_locations_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$arcadeLocationsListStateHash() =>
    r'6a98524706cfc8983030cd4c32f95bf1485c7973';

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

abstract class _$ArcadeLocationsListState
    extends BuildlessAutoDisposeAsyncNotifier<ArcadeLocationsList> {
  late final SearchQuery searchQuery;

  FutureOr<ArcadeLocationsList> build(
    SearchQuery searchQuery,
  );
}

/// See also [ArcadeLocationsListState].
@ProviderFor(ArcadeLocationsListState)
const arcadeLocationsListStateProvider = ArcadeLocationsListStateFamily();

/// See also [ArcadeLocationsListState].
class ArcadeLocationsListStateFamily
    extends Family<AsyncValue<ArcadeLocationsList>> {
  /// See also [ArcadeLocationsListState].
  const ArcadeLocationsListStateFamily();

  /// See also [ArcadeLocationsListState].
  ArcadeLocationsListStateProvider call(
    SearchQuery searchQuery,
  ) {
    return ArcadeLocationsListStateProvider(
      searchQuery,
    );
  }

  @override
  ArcadeLocationsListStateProvider getProviderOverride(
    covariant ArcadeLocationsListStateProvider provider,
  ) {
    return call(
      provider.searchQuery,
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
  String? get name => r'arcadeLocationsListStateProvider';
}

/// See also [ArcadeLocationsListState].
class ArcadeLocationsListStateProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ArcadeLocationsListState,
        ArcadeLocationsList> {
  /// See also [ArcadeLocationsListState].
  ArcadeLocationsListStateProvider(
    SearchQuery searchQuery,
  ) : this._internal(
          () => ArcadeLocationsListState()..searchQuery = searchQuery,
          from: arcadeLocationsListStateProvider,
          name: r'arcadeLocationsListStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$arcadeLocationsListStateHash,
          dependencies: ArcadeLocationsListStateFamily._dependencies,
          allTransitiveDependencies:
              ArcadeLocationsListStateFamily._allTransitiveDependencies,
          searchQuery: searchQuery,
        );

  ArcadeLocationsListStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.searchQuery,
  }) : super.internal();

  final SearchQuery searchQuery;

  @override
  FutureOr<ArcadeLocationsList> runNotifierBuild(
    covariant ArcadeLocationsListState notifier,
  ) {
    return notifier.build(
      searchQuery,
    );
  }

  @override
  Override overrideWith(ArcadeLocationsListState Function() create) {
    return ProviderOverride(
      origin: this,
      override: ArcadeLocationsListStateProvider._internal(
        () => create()..searchQuery = searchQuery,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        searchQuery: searchQuery,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ArcadeLocationsListState,
      ArcadeLocationsList> createElement() {
    return _ArcadeLocationsListStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ArcadeLocationsListStateProvider &&
        other.searchQuery == searchQuery;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchQuery.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ArcadeLocationsListStateRef
    on AutoDisposeAsyncNotifierProviderRef<ArcadeLocationsList> {
  /// The parameter `searchQuery` of this provider.
  SearchQuery get searchQuery;
}

class _ArcadeLocationsListStateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ArcadeLocationsListState,
        ArcadeLocationsList> with ArcadeLocationsListStateRef {
  _ArcadeLocationsListStateProviderElement(super.provider);

  @override
  SearchQuery get searchQuery =>
      (origin as ArcadeLocationsListStateProvider).searchQuery;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
