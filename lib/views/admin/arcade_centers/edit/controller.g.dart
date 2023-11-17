// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adminArcadeCentersEditControllerHash() =>
    r'0b1e232879e2999149e774d026bc1c556b45cbd5';

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

abstract class _$AdminArcadeCentersEditController
    extends BuildlessAutoDisposeAsyncNotifier<AdminArcadeCentersEdit> {
  late final int id;

  FutureOr<AdminArcadeCentersEdit> build(
    int id,
  );
}

/// See also [AdminArcadeCentersEditController].
@ProviderFor(AdminArcadeCentersEditController)
const adminArcadeCentersEditControllerProvider =
    AdminArcadeCentersEditControllerFamily();

/// See also [AdminArcadeCentersEditController].
class AdminArcadeCentersEditControllerFamily
    extends Family<AsyncValue<AdminArcadeCentersEdit>> {
  /// See also [AdminArcadeCentersEditController].
  const AdminArcadeCentersEditControllerFamily();

  /// See also [AdminArcadeCentersEditController].
  AdminArcadeCentersEditControllerProvider call(
    int id,
  ) {
    return AdminArcadeCentersEditControllerProvider(
      id,
    );
  }

  @override
  AdminArcadeCentersEditControllerProvider getProviderOverride(
    covariant AdminArcadeCentersEditControllerProvider provider,
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
  String? get name => r'adminArcadeCentersEditControllerProvider';
}

/// See also [AdminArcadeCentersEditController].
class AdminArcadeCentersEditControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        AdminArcadeCentersEditController, AdminArcadeCentersEdit> {
  /// See also [AdminArcadeCentersEditController].
  AdminArcadeCentersEditControllerProvider(
    int id,
  ) : this._internal(
          () => AdminArcadeCentersEditController()..id = id,
          from: adminArcadeCentersEditControllerProvider,
          name: r'adminArcadeCentersEditControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$adminArcadeCentersEditControllerHash,
          dependencies: AdminArcadeCentersEditControllerFamily._dependencies,
          allTransitiveDependencies:
              AdminArcadeCentersEditControllerFamily._allTransitiveDependencies,
          id: id,
        );

  AdminArcadeCentersEditControllerProvider._internal(
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
  FutureOr<AdminArcadeCentersEdit> runNotifierBuild(
    covariant AdminArcadeCentersEditController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(AdminArcadeCentersEditController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AdminArcadeCentersEditControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<AdminArcadeCentersEditController,
      AdminArcadeCentersEdit> createElement() {
    return _AdminArcadeCentersEditControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AdminArcadeCentersEditControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AdminArcadeCentersEditControllerRef
    on AutoDisposeAsyncNotifierProviderRef<AdminArcadeCentersEdit> {
  /// The parameter `id` of this provider.
  int get id;
}

class _AdminArcadeCentersEditControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        AdminArcadeCentersEditController,
        AdminArcadeCentersEdit> with AdminArcadeCentersEditControllerRef {
  _AdminArcadeCentersEditControllerProviderElement(super.provider);

  @override
  int get id => (origin as AdminArcadeCentersEditControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
