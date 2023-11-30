// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adminUsersEditControllerHash() =>
    r'2d4d38f053729e39f456856b8d2cbdcccccf6007';

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

abstract class _$AdminUsersEditController
    extends BuildlessAutoDisposeAsyncNotifier<AdminUsersEdit> {
  late final int id;

  FutureOr<AdminUsersEdit> build(
    int id,
  );
}

/// See also [AdminUsersEditController].
@ProviderFor(AdminUsersEditController)
const adminUsersEditControllerProvider = AdminUsersEditControllerFamily();

/// See also [AdminUsersEditController].
class AdminUsersEditControllerFamily
    extends Family<AsyncValue<AdminUsersEdit>> {
  /// See also [AdminUsersEditController].
  const AdminUsersEditControllerFamily();

  /// See also [AdminUsersEditController].
  AdminUsersEditControllerProvider call(
    int id,
  ) {
    return AdminUsersEditControllerProvider(
      id,
    );
  }

  @override
  AdminUsersEditControllerProvider getProviderOverride(
    covariant AdminUsersEditControllerProvider provider,
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
  String? get name => r'adminUsersEditControllerProvider';
}

/// See also [AdminUsersEditController].
class AdminUsersEditControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AdminUsersEditController,
        AdminUsersEdit> {
  /// See also [AdminUsersEditController].
  AdminUsersEditControllerProvider(
    int id,
  ) : this._internal(
          () => AdminUsersEditController()..id = id,
          from: adminUsersEditControllerProvider,
          name: r'adminUsersEditControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$adminUsersEditControllerHash,
          dependencies: AdminUsersEditControllerFamily._dependencies,
          allTransitiveDependencies:
              AdminUsersEditControllerFamily._allTransitiveDependencies,
          id: id,
        );

  AdminUsersEditControllerProvider._internal(
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
  FutureOr<AdminUsersEdit> runNotifierBuild(
    covariant AdminUsersEditController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(AdminUsersEditController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AdminUsersEditControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<AdminUsersEditController,
      AdminUsersEdit> createElement() {
    return _AdminUsersEditControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AdminUsersEditControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AdminUsersEditControllerRef
    on AutoDisposeAsyncNotifierProviderRef<AdminUsersEdit> {
  /// The parameter `id` of this provider.
  int get id;
}

class _AdminUsersEditControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AdminUsersEditController,
        AdminUsersEdit> with AdminUsersEditControllerRef {
  _AdminUsersEditControllerProviderElement(super.provider);

  @override
  int get id => (origin as AdminUsersEditControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
