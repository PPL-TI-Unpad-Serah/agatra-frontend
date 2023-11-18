// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adminGamesEditTitleControllerHash() =>
    r'5e9a991a2d8cf189359670e062750551e73e4d57';

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

abstract class _$AdminGamesEditTitleController
    extends BuildlessAutoDisposeAsyncNotifier<AdminGamesEditTitle> {
  late final int id;

  FutureOr<AdminGamesEditTitle> build(
    int id,
  );
}

/// See also [AdminGamesEditTitleController].
@ProviderFor(AdminGamesEditTitleController)
const adminGamesEditTitleControllerProvider =
    AdminGamesEditTitleControllerFamily();

/// See also [AdminGamesEditTitleController].
class AdminGamesEditTitleControllerFamily
    extends Family<AsyncValue<AdminGamesEditTitle>> {
  /// See also [AdminGamesEditTitleController].
  const AdminGamesEditTitleControllerFamily();

  /// See also [AdminGamesEditTitleController].
  AdminGamesEditTitleControllerProvider call(
    int id,
  ) {
    return AdminGamesEditTitleControllerProvider(
      id,
    );
  }

  @override
  AdminGamesEditTitleControllerProvider getProviderOverride(
    covariant AdminGamesEditTitleControllerProvider provider,
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
  String? get name => r'adminGamesEditTitleControllerProvider';
}

/// See also [AdminGamesEditTitleController].
class AdminGamesEditTitleControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AdminGamesEditTitleController,
        AdminGamesEditTitle> {
  /// See also [AdminGamesEditTitleController].
  AdminGamesEditTitleControllerProvider(
    int id,
  ) : this._internal(
          () => AdminGamesEditTitleController()..id = id,
          from: adminGamesEditTitleControllerProvider,
          name: r'adminGamesEditTitleControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$adminGamesEditTitleControllerHash,
          dependencies: AdminGamesEditTitleControllerFamily._dependencies,
          allTransitiveDependencies:
              AdminGamesEditTitleControllerFamily._allTransitiveDependencies,
          id: id,
        );

  AdminGamesEditTitleControllerProvider._internal(
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
  FutureOr<AdminGamesEditTitle> runNotifierBuild(
    covariant AdminGamesEditTitleController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(AdminGamesEditTitleController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AdminGamesEditTitleControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<AdminGamesEditTitleController,
      AdminGamesEditTitle> createElement() {
    return _AdminGamesEditTitleControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AdminGamesEditTitleControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AdminGamesEditTitleControllerRef
    on AutoDisposeAsyncNotifierProviderRef<AdminGamesEditTitle> {
  /// The parameter `id` of this provider.
  int get id;
}

class _AdminGamesEditTitleControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        AdminGamesEditTitleController,
        AdminGamesEditTitle> with AdminGamesEditTitleControllerRef {
  _AdminGamesEditTitleControllerProviderElement(super.provider);

  @override
  int get id => (origin as AdminGamesEditTitleControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
