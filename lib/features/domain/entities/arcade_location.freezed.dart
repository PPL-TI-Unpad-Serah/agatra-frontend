// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arcade_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArcadeLocationEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ArcadeCenterEntity get gameCenter => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  List<ArcadeMachineEntity> get machines => throw _privateConstructorUsedError;
  CityEntity get city => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArcadeLocationEntityCopyWith<ArcadeLocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArcadeLocationEntityCopyWith<$Res> {
  factory $ArcadeLocationEntityCopyWith(ArcadeLocationEntity value,
          $Res Function(ArcadeLocationEntity) then) =
      _$ArcadeLocationEntityCopyWithImpl<$Res, ArcadeLocationEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      ArcadeCenterEntity gameCenter,
      String description,
      double latitude,
      double longitude,
      List<ArcadeMachineEntity> machines,
      CityEntity city});

  $ArcadeCenterEntityCopyWith<$Res> get gameCenter;
}

/// @nodoc
class _$ArcadeLocationEntityCopyWithImpl<$Res,
        $Val extends ArcadeLocationEntity>
    implements $ArcadeLocationEntityCopyWith<$Res> {
  _$ArcadeLocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gameCenter = null,
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? machines = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gameCenter: null == gameCenter
          ? _value.gameCenter
          : gameCenter // ignore: cast_nullable_to_non_nullable
              as ArcadeCenterEntity,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      machines: null == machines
          ? _value.machines
          : machines // ignore: cast_nullable_to_non_nullable
              as List<ArcadeMachineEntity>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArcadeCenterEntityCopyWith<$Res> get gameCenter {
    return $ArcadeCenterEntityCopyWith<$Res>(_value.gameCenter, (value) {
      return _then(_value.copyWith(gameCenter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArcadeLocationEntityImplCopyWith<$Res>
    implements $ArcadeLocationEntityCopyWith<$Res> {
  factory _$$ArcadeLocationEntityImplCopyWith(_$ArcadeLocationEntityImpl value,
          $Res Function(_$ArcadeLocationEntityImpl) then) =
      __$$ArcadeLocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      ArcadeCenterEntity gameCenter,
      String description,
      double latitude,
      double longitude,
      List<ArcadeMachineEntity> machines,
      CityEntity city});

  @override
  $ArcadeCenterEntityCopyWith<$Res> get gameCenter;
}

/// @nodoc
class __$$ArcadeLocationEntityImplCopyWithImpl<$Res>
    extends _$ArcadeLocationEntityCopyWithImpl<$Res, _$ArcadeLocationEntityImpl>
    implements _$$ArcadeLocationEntityImplCopyWith<$Res> {
  __$$ArcadeLocationEntityImplCopyWithImpl(_$ArcadeLocationEntityImpl _value,
      $Res Function(_$ArcadeLocationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gameCenter = null,
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? machines = null,
    Object? city = null,
  }) {
    return _then(_$ArcadeLocationEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gameCenter: null == gameCenter
          ? _value.gameCenter
          : gameCenter // ignore: cast_nullable_to_non_nullable
              as ArcadeCenterEntity,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      machines: null == machines
          ? _value._machines
          : machines // ignore: cast_nullable_to_non_nullable
              as List<ArcadeMachineEntity>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity,
    ));
  }
}

/// @nodoc

class _$ArcadeLocationEntityImpl implements _ArcadeLocationEntity {
  _$ArcadeLocationEntityImpl(
      {required this.id,
      required this.name,
      required this.gameCenter,
      required this.description,
      required this.latitude,
      required this.longitude,
      required final List<ArcadeMachineEntity> machines,
      required this.city})
      : _machines = machines;

  @override
  final int id;
  @override
  final String name;
  @override
  final ArcadeCenterEntity gameCenter;
  @override
  final String description;
  @override
  final double latitude;
  @override
  final double longitude;
  final List<ArcadeMachineEntity> _machines;
  @override
  List<ArcadeMachineEntity> get machines {
    if (_machines is EqualUnmodifiableListView) return _machines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_machines);
  }

  @override
  final CityEntity city;

  @override
  String toString() {
    return 'ArcadeLocationEntity(id: $id, name: $name, gameCenter: $gameCenter, description: $description, latitude: $latitude, longitude: $longitude, machines: $machines, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArcadeLocationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gameCenter, gameCenter) ||
                other.gameCenter == gameCenter) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality().equals(other._machines, _machines) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      gameCenter,
      description,
      latitude,
      longitude,
      const DeepCollectionEquality().hash(_machines),
      city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArcadeLocationEntityImplCopyWith<_$ArcadeLocationEntityImpl>
      get copyWith =>
          __$$ArcadeLocationEntityImplCopyWithImpl<_$ArcadeLocationEntityImpl>(
              this, _$identity);
}

abstract class _ArcadeLocationEntity implements ArcadeLocationEntity {
  factory _ArcadeLocationEntity(
      {required final int id,
      required final String name,
      required final ArcadeCenterEntity gameCenter,
      required final String description,
      required final double latitude,
      required final double longitude,
      required final List<ArcadeMachineEntity> machines,
      required final CityEntity city}) = _$ArcadeLocationEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  ArcadeCenterEntity get gameCenter;
  @override
  String get description;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  List<ArcadeMachineEntity> get machines;
  @override
  CityEntity get city;
  @override
  @JsonKey(ignore: true)
  _$$ArcadeLocationEntityImplCopyWith<_$ArcadeLocationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
