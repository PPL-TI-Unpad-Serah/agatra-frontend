// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_arcade_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewArcadeLocationEntity {
  String? get name => throw _privateConstructorUsedError;
  ArcadeCenterEntity? get gameCenter => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  CityEntity? get city => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewArcadeLocationEntityCopyWith<NewArcadeLocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewArcadeLocationEntityCopyWith<$Res> {
  factory $NewArcadeLocationEntityCopyWith(NewArcadeLocationEntity value,
          $Res Function(NewArcadeLocationEntity) then) =
      _$NewArcadeLocationEntityCopyWithImpl<$Res, NewArcadeLocationEntity>;
  @useResult
  $Res call(
      {String? name,
      ArcadeCenterEntity? gameCenter,
      String? description,
      double? latitude,
      double? longitude,
      CityEntity? city});

  $ArcadeCenterEntityCopyWith<$Res>? get gameCenter;
}

/// @nodoc
class _$NewArcadeLocationEntityCopyWithImpl<$Res,
        $Val extends NewArcadeLocationEntity>
    implements $NewArcadeLocationEntityCopyWith<$Res> {
  _$NewArcadeLocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? gameCenter = freezed,
    Object? description = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gameCenter: freezed == gameCenter
          ? _value.gameCenter
          : gameCenter // ignore: cast_nullable_to_non_nullable
              as ArcadeCenterEntity?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArcadeCenterEntityCopyWith<$Res>? get gameCenter {
    if (_value.gameCenter == null) {
      return null;
    }

    return $ArcadeCenterEntityCopyWith<$Res>(_value.gameCenter!, (value) {
      return _then(_value.copyWith(gameCenter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewArcadeLocationEntityImplCopyWith<$Res>
    implements $NewArcadeLocationEntityCopyWith<$Res> {
  factory _$$NewArcadeLocationEntityImplCopyWith(
          _$NewArcadeLocationEntityImpl value,
          $Res Function(_$NewArcadeLocationEntityImpl) then) =
      __$$NewArcadeLocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      ArcadeCenterEntity? gameCenter,
      String? description,
      double? latitude,
      double? longitude,
      CityEntity? city});

  @override
  $ArcadeCenterEntityCopyWith<$Res>? get gameCenter;
}

/// @nodoc
class __$$NewArcadeLocationEntityImplCopyWithImpl<$Res>
    extends _$NewArcadeLocationEntityCopyWithImpl<$Res,
        _$NewArcadeLocationEntityImpl>
    implements _$$NewArcadeLocationEntityImplCopyWith<$Res> {
  __$$NewArcadeLocationEntityImplCopyWithImpl(
      _$NewArcadeLocationEntityImpl _value,
      $Res Function(_$NewArcadeLocationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? gameCenter = freezed,
    Object? description = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? city = freezed,
  }) {
    return _then(_$NewArcadeLocationEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gameCenter: freezed == gameCenter
          ? _value.gameCenter
          : gameCenter // ignore: cast_nullable_to_non_nullable
              as ArcadeCenterEntity?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity?,
    ));
  }
}

/// @nodoc

class _$NewArcadeLocationEntityImpl implements _NewArcadeLocationEntity {
  _$NewArcadeLocationEntityImpl(
      {this.name,
      this.gameCenter,
      this.description,
      this.latitude,
      this.longitude,
      this.city});

  @override
  final String? name;
  @override
  final ArcadeCenterEntity? gameCenter;
  @override
  final String? description;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final CityEntity? city;

  @override
  String toString() {
    return 'NewArcadeLocationEntity(name: $name, gameCenter: $gameCenter, description: $description, latitude: $latitude, longitude: $longitude, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewArcadeLocationEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gameCenter, gameCenter) ||
                other.gameCenter == gameCenter) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, gameCenter, description, latitude, longitude, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewArcadeLocationEntityImplCopyWith<_$NewArcadeLocationEntityImpl>
      get copyWith => __$$NewArcadeLocationEntityImplCopyWithImpl<
          _$NewArcadeLocationEntityImpl>(this, _$identity);
}

abstract class _NewArcadeLocationEntity implements NewArcadeLocationEntity {
  factory _NewArcadeLocationEntity(
      {final String? name,
      final ArcadeCenterEntity? gameCenter,
      final String? description,
      final double? latitude,
      final double? longitude,
      final CityEntity? city}) = _$NewArcadeLocationEntityImpl;

  @override
  String? get name;
  @override
  ArcadeCenterEntity? get gameCenter;
  @override
  String? get description;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  CityEntity? get city;
  @override
  @JsonKey(ignore: true)
  _$$NewArcadeLocationEntityImplCopyWith<_$NewArcadeLocationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
