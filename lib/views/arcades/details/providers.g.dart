// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getArcadeLocationHash() => r'05f6989490a4e3cff980e7c63971186e0fc5fe26';

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

/// See also [getArcadeLocation].
@ProviderFor(getArcadeLocation)
const getArcadeLocationProvider = GetArcadeLocationFamily();

/// See also [getArcadeLocation].
class GetArcadeLocationFamily extends Family<AsyncValue<ArcadeLocationEntity>> {
  /// See also [getArcadeLocation].
  const GetArcadeLocationFamily();

  /// See also [getArcadeLocation].
  GetArcadeLocationProvider call(
    int id,
  ) {
    return GetArcadeLocationProvider(
      id,
    );
  }

  @override
  GetArcadeLocationProvider getProviderOverride(
    covariant GetArcadeLocationProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getArcadeLocationProvider';
}

/// See also [getArcadeLocation].
class GetArcadeLocationProvider
    extends AutoDisposeFutureProvider<ArcadeLocationEntity> {
  /// See also [getArcadeLocation].
  GetArcadeLocationProvider(
    int id,
  ) : this._internal(
          (ref) => getArcadeLocation(
            ref as GetArcadeLocationRef,
            id,
          ),
          from: getArcadeLocationProvider,
          name: r'getArcadeLocationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getArcadeLocationHash,
          dependencies: GetArcadeLocationFamily._dependencies,
          allTransitiveDependencies:
              GetArcadeLocationFamily._allTransitiveDependencies,
          id: id,
        );

  GetArcadeLocationProvider._internal(
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
    FutureOr<ArcadeLocationEntity> Function(GetArcadeLocationRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetArcadeLocationProvider._internal(
        (ref) => create(ref as GetArcadeLocationRef),
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
  AutoDisposeFutureProviderElement<ArcadeLocationEntity> createElement() {
    return _GetArcadeLocationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetArcadeLocationProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetArcadeLocationRef
    on AutoDisposeFutureProviderRef<ArcadeLocationEntity> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetArcadeLocationProviderElement
    extends AutoDisposeFutureProviderElement<ArcadeLocationEntity>
    with GetArcadeLocationRef {
  _GetArcadeLocationProviderElement(super.provider);

  @override
  int get id => (origin as GetArcadeLocationProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
