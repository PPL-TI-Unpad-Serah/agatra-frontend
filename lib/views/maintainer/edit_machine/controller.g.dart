// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$maintainerMachineEditControllerHash() =>
    r'ae53b4bfd59da19188335b5ccd0809aaaabef744';

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

abstract class _$MaintainerMachineEditController
    extends BuildlessAutoDisposeAsyncNotifier<MaintainerMachineEdit> {
  late final int id;

  FutureOr<MaintainerMachineEdit> build(
    int id,
  );
}

/// See also [MaintainerMachineEditController].
@ProviderFor(MaintainerMachineEditController)
const maintainerMachineEditControllerProvider =
    MaintainerMachineEditControllerFamily();

/// See also [MaintainerMachineEditController].
class MaintainerMachineEditControllerFamily
    extends Family<AsyncValue<MaintainerMachineEdit>> {
  /// See also [MaintainerMachineEditController].
  const MaintainerMachineEditControllerFamily();

  /// See also [MaintainerMachineEditController].
  MaintainerMachineEditControllerProvider call(
    int id,
  ) {
    return MaintainerMachineEditControllerProvider(
      id,
    );
  }

  @override
  MaintainerMachineEditControllerProvider getProviderOverride(
    covariant MaintainerMachineEditControllerProvider provider,
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
  String? get name => r'maintainerMachineEditControllerProvider';
}

/// See also [MaintainerMachineEditController].
class MaintainerMachineEditControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        MaintainerMachineEditController, MaintainerMachineEdit> {
  /// See also [MaintainerMachineEditController].
  MaintainerMachineEditControllerProvider(
    int id,
  ) : this._internal(
          () => MaintainerMachineEditController()..id = id,
          from: maintainerMachineEditControllerProvider,
          name: r'maintainerMachineEditControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$maintainerMachineEditControllerHash,
          dependencies: MaintainerMachineEditControllerFamily._dependencies,
          allTransitiveDependencies:
              MaintainerMachineEditControllerFamily._allTransitiveDependencies,
          id: id,
        );

  MaintainerMachineEditControllerProvider._internal(
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
  FutureOr<MaintainerMachineEdit> runNotifierBuild(
    covariant MaintainerMachineEditController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(MaintainerMachineEditController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MaintainerMachineEditControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MaintainerMachineEditController,
      MaintainerMachineEdit> createElement() {
    return _MaintainerMachineEditControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MaintainerMachineEditControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MaintainerMachineEditControllerRef
    on AutoDisposeAsyncNotifierProviderRef<MaintainerMachineEdit> {
  /// The parameter `id` of this provider.
  int get id;
}

class _MaintainerMachineEditControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        MaintainerMachineEditController,
        MaintainerMachineEdit> with MaintainerMachineEditControllerRef {
  _MaintainerMachineEditControllerProviderElement(super.provider);

  @override
  int get id => (origin as MaintainerMachineEditControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
