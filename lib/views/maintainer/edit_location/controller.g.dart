// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$maintainerLocationEditControllerHash() =>
    r'ce9de63c836d92bffad4849fd35e9325c0be027e';

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

abstract class _$MaintainerLocationEditController
    extends BuildlessAutoDisposeAsyncNotifier<MaintainerLocationEdit> {
  late final int id;

  FutureOr<MaintainerLocationEdit> build(
    int id,
  );
}

/// See also [MaintainerLocationEditController].
@ProviderFor(MaintainerLocationEditController)
const maintainerLocationEditControllerProvider =
    MaintainerLocationEditControllerFamily();

/// See also [MaintainerLocationEditController].
class MaintainerLocationEditControllerFamily
    extends Family<AsyncValue<MaintainerLocationEdit>> {
  /// See also [MaintainerLocationEditController].
  const MaintainerLocationEditControllerFamily();

  /// See also [MaintainerLocationEditController].
  MaintainerLocationEditControllerProvider call(
    int id,
  ) {
    return MaintainerLocationEditControllerProvider(
      id,
    );
  }

  @override
  MaintainerLocationEditControllerProvider getProviderOverride(
    covariant MaintainerLocationEditControllerProvider provider,
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
  String? get name => r'maintainerLocationEditControllerProvider';
}

/// See also [MaintainerLocationEditController].
class MaintainerLocationEditControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        MaintainerLocationEditController, MaintainerLocationEdit> {
  /// See also [MaintainerLocationEditController].
  MaintainerLocationEditControllerProvider(
    int id,
  ) : this._internal(
          () => MaintainerLocationEditController()..id = id,
          from: maintainerLocationEditControllerProvider,
          name: r'maintainerLocationEditControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$maintainerLocationEditControllerHash,
          dependencies: MaintainerLocationEditControllerFamily._dependencies,
          allTransitiveDependencies:
              MaintainerLocationEditControllerFamily._allTransitiveDependencies,
          id: id,
        );

  MaintainerLocationEditControllerProvider._internal(
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
  FutureOr<MaintainerLocationEdit> runNotifierBuild(
    covariant MaintainerLocationEditController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(MaintainerLocationEditController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MaintainerLocationEditControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MaintainerLocationEditController,
      MaintainerLocationEdit> createElement() {
    return _MaintainerLocationEditControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MaintainerLocationEditControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MaintainerLocationEditControllerRef
    on AutoDisposeAsyncNotifierProviderRef<MaintainerLocationEdit> {
  /// The parameter `id` of this provider.
  int get id;
}

class _MaintainerLocationEditControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        MaintainerLocationEditController,
        MaintainerLocationEdit> with MaintainerLocationEditControllerRef {
  _MaintainerLocationEditControllerProviderElement(super.provider);

  @override
  int get id => (origin as MaintainerLocationEditControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
