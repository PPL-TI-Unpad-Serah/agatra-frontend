// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adminGamesEditVersionControllerHash() =>
    r'09d661291f8b5e5ebf251c05f7e7de7e0b1ec6ff';

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

abstract class _$AdminGamesEditVersionController
    extends BuildlessAutoDisposeAsyncNotifier<AdminGamesEditVersion> {
  late final int id;

  FutureOr<AdminGamesEditVersion> build(
    int id,
  );
}

/// See also [AdminGamesEditVersionController].
@ProviderFor(AdminGamesEditVersionController)
const adminGamesEditVersionControllerProvider =
    AdminGamesEditVersionControllerFamily();

/// See also [AdminGamesEditVersionController].
class AdminGamesEditVersionControllerFamily
    extends Family<AsyncValue<AdminGamesEditVersion>> {
  /// See also [AdminGamesEditVersionController].
  const AdminGamesEditVersionControllerFamily();

  /// See also [AdminGamesEditVersionController].
  AdminGamesEditVersionControllerProvider call(
    int id,
  ) {
    return AdminGamesEditVersionControllerProvider(
      id,
    );
  }

  @override
  AdminGamesEditVersionControllerProvider getProviderOverride(
    covariant AdminGamesEditVersionControllerProvider provider,
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
  String? get name => r'adminGamesEditVersionControllerProvider';
}

/// See also [AdminGamesEditVersionController].
class AdminGamesEditVersionControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        AdminGamesEditVersionController, AdminGamesEditVersion> {
  /// See also [AdminGamesEditVersionController].
  AdminGamesEditVersionControllerProvider(
    int id,
  ) : this._internal(
          () => AdminGamesEditVersionController()..id = id,
          from: adminGamesEditVersionControllerProvider,
          name: r'adminGamesEditVersionControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$adminGamesEditVersionControllerHash,
          dependencies: AdminGamesEditVersionControllerFamily._dependencies,
          allTransitiveDependencies:
              AdminGamesEditVersionControllerFamily._allTransitiveDependencies,
          id: id,
        );

  AdminGamesEditVersionControllerProvider._internal(
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
  FutureOr<AdminGamesEditVersion> runNotifierBuild(
    covariant AdminGamesEditVersionController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(AdminGamesEditVersionController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AdminGamesEditVersionControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<AdminGamesEditVersionController,
      AdminGamesEditVersion> createElement() {
    return _AdminGamesEditVersionControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AdminGamesEditVersionControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AdminGamesEditVersionControllerRef
    on AutoDisposeAsyncNotifierProviderRef<AdminGamesEditVersion> {
  /// The parameter `id` of this provider.
  int get id;
}

class _AdminGamesEditVersionControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        AdminGamesEditVersionController,
        AdminGamesEditVersion> with AdminGamesEditVersionControllerRef {
  _AdminGamesEditVersionControllerProviderElement(super.provider);

  @override
  int get id => (origin as AdminGamesEditVersionControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
