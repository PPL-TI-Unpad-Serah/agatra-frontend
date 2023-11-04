// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCitiesHash() => r'66a6915177b27468ba0b28e8c92c8b7bb42d630b';

/// See also [getCities].
@ProviderFor(getCities)
final getCitiesProvider = AutoDisposeFutureProvider<List<CityEntity>>.internal(
  getCities,
  name: r'getCitiesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getCitiesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCitiesRef = AutoDisposeFutureProviderRef<List<CityEntity>>;
String _$getGameTitlesHash() => r'6acc25530e4881e3de88cb4d996aeb13ab21dfd3';

/// See also [getGameTitles].
@ProviderFor(getGameTitles)
final getGameTitlesProvider =
    AutoDisposeFutureProvider<List<GameTitleEntity>>.internal(
  getGameTitles,
  name: r'getGameTitlesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getGameTitlesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetGameTitlesRef = AutoDisposeFutureProviderRef<List<GameTitleEntity>>;
String _$getGameTitleVersionsOfHash() =>
    r'9c5faa81de3d0f3c3e7d991601850f710d9d4fec';

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

/// See also [getGameTitleVersionsOf].
@ProviderFor(getGameTitleVersionsOf)
const getGameTitleVersionsOfProvider = GetGameTitleVersionsOfFamily();

/// See also [getGameTitleVersionsOf].
class GetGameTitleVersionsOfFamily
    extends Family<AsyncValue<List<GameTitleVersionEntity>>> {
  /// See also [getGameTitleVersionsOf].
  const GetGameTitleVersionsOfFamily();

  /// See also [getGameTitleVersionsOf].
  GetGameTitleVersionsOfProvider call(
    GameTitleEntity gameTitle,
  ) {
    return GetGameTitleVersionsOfProvider(
      gameTitle,
    );
  }

  @override
  GetGameTitleVersionsOfProvider getProviderOverride(
    covariant GetGameTitleVersionsOfProvider provider,
  ) {
    return call(
      provider.gameTitle,
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
  String? get name => r'getGameTitleVersionsOfProvider';
}

/// See also [getGameTitleVersionsOf].
class GetGameTitleVersionsOfProvider
    extends AutoDisposeFutureProvider<List<GameTitleVersionEntity>> {
  /// See also [getGameTitleVersionsOf].
  GetGameTitleVersionsOfProvider(
    GameTitleEntity gameTitle,
  ) : this._internal(
          (ref) => getGameTitleVersionsOf(
            ref as GetGameTitleVersionsOfRef,
            gameTitle,
          ),
          from: getGameTitleVersionsOfProvider,
          name: r'getGameTitleVersionsOfProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGameTitleVersionsOfHash,
          dependencies: GetGameTitleVersionsOfFamily._dependencies,
          allTransitiveDependencies:
              GetGameTitleVersionsOfFamily._allTransitiveDependencies,
          gameTitle: gameTitle,
        );

  GetGameTitleVersionsOfProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.gameTitle,
  }) : super.internal();

  final GameTitleEntity gameTitle;

  @override
  Override overrideWith(
    FutureOr<List<GameTitleVersionEntity>> Function(
            GetGameTitleVersionsOfRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGameTitleVersionsOfProvider._internal(
        (ref) => create(ref as GetGameTitleVersionsOfRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        gameTitle: gameTitle,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<GameTitleVersionEntity>>
      createElement() {
    return _GetGameTitleVersionsOfProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGameTitleVersionsOfProvider &&
        other.gameTitle == gameTitle;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, gameTitle.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetGameTitleVersionsOfRef
    on AutoDisposeFutureProviderRef<List<GameTitleVersionEntity>> {
  /// The parameter `gameTitle` of this provider.
  GameTitleEntity get gameTitle;
}

class _GetGameTitleVersionsOfProviderElement
    extends AutoDisposeFutureProviderElement<List<GameTitleVersionEntity>>
    with GetGameTitleVersionsOfRef {
  _GetGameTitleVersionsOfProviderElement(super.provider);

  @override
  GameTitleEntity get gameTitle =>
      (origin as GetGameTitleVersionsOfProvider).gameTitle;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
