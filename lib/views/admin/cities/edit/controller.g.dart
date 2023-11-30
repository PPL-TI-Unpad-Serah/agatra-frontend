// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adminCitiesEditControllerHash() =>
    r'55bd394a7288604338083611645bfcc9bb31c723';

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

abstract class _$AdminCitiesEditController
    extends BuildlessAutoDisposeAsyncNotifier<AdminCitiesEdit> {
  late final int id;

  FutureOr<AdminCitiesEdit> build(
    int id,
  );
}

/// See also [AdminCitiesEditController].
@ProviderFor(AdminCitiesEditController)
const adminCitiesEditControllerProvider = AdminCitiesEditControllerFamily();

/// See also [AdminCitiesEditController].
class AdminCitiesEditControllerFamily
    extends Family<AsyncValue<AdminCitiesEdit>> {
  /// See also [AdminCitiesEditController].
  const AdminCitiesEditControllerFamily();

  /// See also [AdminCitiesEditController].
  AdminCitiesEditControllerProvider call(
    int id,
  ) {
    return AdminCitiesEditControllerProvider(
      id,
    );
  }

  @override
  AdminCitiesEditControllerProvider getProviderOverride(
    covariant AdminCitiesEditControllerProvider provider,
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
  String? get name => r'adminCitiesEditControllerProvider';
}

/// See also [AdminCitiesEditController].
class AdminCitiesEditControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AdminCitiesEditController,
        AdminCitiesEdit> {
  /// See also [AdminCitiesEditController].
  AdminCitiesEditControllerProvider(
    int id,
  ) : this._internal(
          () => AdminCitiesEditController()..id = id,
          from: adminCitiesEditControllerProvider,
          name: r'adminCitiesEditControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$adminCitiesEditControllerHash,
          dependencies: AdminCitiesEditControllerFamily._dependencies,
          allTransitiveDependencies:
              AdminCitiesEditControllerFamily._allTransitiveDependencies,
          id: id,
        );

  AdminCitiesEditControllerProvider._internal(
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
  FutureOr<AdminCitiesEdit> runNotifierBuild(
    covariant AdminCitiesEditController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(AdminCitiesEditController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AdminCitiesEditControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<AdminCitiesEditController,
      AdminCitiesEdit> createElement() {
    return _AdminCitiesEditControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AdminCitiesEditControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AdminCitiesEditControllerRef
    on AutoDisposeAsyncNotifierProviderRef<AdminCitiesEdit> {
  /// The parameter `id` of this provider.
  int get id;
}

class _AdminCitiesEditControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AdminCitiesEditController,
        AdminCitiesEdit> with AdminCitiesEditControllerRef {
  _AdminCitiesEditControllerProviderElement(super.provider);

  @override
  int get id => (origin as AdminCitiesEditControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
