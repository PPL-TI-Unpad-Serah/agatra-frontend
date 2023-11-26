// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$maintainerNewMachineControllerHash() =>
    r'5b2e8c27d82ce76aea5ff311aeda1b836d911543';

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

abstract class _$MaintainerNewMachineController
    extends BuildlessAutoDisposeAsyncNotifier<MaintainerNewMachine> {
  late final int arcadeLocationId;

  FutureOr<MaintainerNewMachine> build(
    int arcadeLocationId,
  );
}

/// See also [MaintainerNewMachineController].
@ProviderFor(MaintainerNewMachineController)
const maintainerNewMachineControllerProvider =
    MaintainerNewMachineControllerFamily();

/// See also [MaintainerNewMachineController].
class MaintainerNewMachineControllerFamily
    extends Family<AsyncValue<MaintainerNewMachine>> {
  /// See also [MaintainerNewMachineController].
  const MaintainerNewMachineControllerFamily();

  /// See also [MaintainerNewMachineController].
  MaintainerNewMachineControllerProvider call(
    int arcadeLocationId,
  ) {
    return MaintainerNewMachineControllerProvider(
      arcadeLocationId,
    );
  }

  @override
  MaintainerNewMachineControllerProvider getProviderOverride(
    covariant MaintainerNewMachineControllerProvider provider,
  ) {
    return call(
      provider.arcadeLocationId,
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
  String? get name => r'maintainerNewMachineControllerProvider';
}

/// See also [MaintainerNewMachineController].
class MaintainerNewMachineControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MaintainerNewMachineController,
        MaintainerNewMachine> {
  /// See also [MaintainerNewMachineController].
  MaintainerNewMachineControllerProvider(
    int arcadeLocationId,
  ) : this._internal(
          () => MaintainerNewMachineController()
            ..arcadeLocationId = arcadeLocationId,
          from: maintainerNewMachineControllerProvider,
          name: r'maintainerNewMachineControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$maintainerNewMachineControllerHash,
          dependencies: MaintainerNewMachineControllerFamily._dependencies,
          allTransitiveDependencies:
              MaintainerNewMachineControllerFamily._allTransitiveDependencies,
          arcadeLocationId: arcadeLocationId,
        );

  MaintainerNewMachineControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.arcadeLocationId,
  }) : super.internal();

  final int arcadeLocationId;

  @override
  FutureOr<MaintainerNewMachine> runNotifierBuild(
    covariant MaintainerNewMachineController notifier,
  ) {
    return notifier.build(
      arcadeLocationId,
    );
  }

  @override
  Override overrideWith(MaintainerNewMachineController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MaintainerNewMachineControllerProvider._internal(
        () => create()..arcadeLocationId = arcadeLocationId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        arcadeLocationId: arcadeLocationId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MaintainerNewMachineController,
      MaintainerNewMachine> createElement() {
    return _MaintainerNewMachineControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MaintainerNewMachineControllerProvider &&
        other.arcadeLocationId == arcadeLocationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, arcadeLocationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MaintainerNewMachineControllerRef
    on AutoDisposeAsyncNotifierProviderRef<MaintainerNewMachine> {
  /// The parameter `arcadeLocationId` of this provider.
  int get arcadeLocationId;
}

class _MaintainerNewMachineControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        MaintainerNewMachineController,
        MaintainerNewMachine> with MaintainerNewMachineControllerRef {
  _MaintainerNewMachineControllerProviderElement(super.provider);

  @override
  int get arcadeLocationId =>
      (origin as MaintainerNewMachineControllerProvider).arcadeLocationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
