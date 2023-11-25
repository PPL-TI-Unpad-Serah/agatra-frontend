// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MaintainerNewLocation {
  List<ArcadeCenterEntity> get arcadeCenters =>
      throw _privateConstructorUsedError;
  List<CityEntity> get cities => throw _privateConstructorUsedError;
  NewArcadeLocationEntity get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaintainerNewLocationCopyWith<MaintainerNewLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintainerNewLocationCopyWith<$Res> {
  factory $MaintainerNewLocationCopyWith(MaintainerNewLocation value,
          $Res Function(MaintainerNewLocation) then) =
      _$MaintainerNewLocationCopyWithImpl<$Res, MaintainerNewLocation>;
  @useResult
  $Res call(
      {List<ArcadeCenterEntity> arcadeCenters,
      List<CityEntity> cities,
      NewArcadeLocationEntity item});

  $NewArcadeLocationEntityCopyWith<$Res> get item;
}

/// @nodoc
class _$MaintainerNewLocationCopyWithImpl<$Res,
        $Val extends MaintainerNewLocation>
    implements $MaintainerNewLocationCopyWith<$Res> {
  _$MaintainerNewLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arcadeCenters = null,
    Object? cities = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      arcadeCenters: null == arcadeCenters
          ? _value.arcadeCenters
          : arcadeCenters // ignore: cast_nullable_to_non_nullable
              as List<ArcadeCenterEntity>,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityEntity>,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as NewArcadeLocationEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewArcadeLocationEntityCopyWith<$Res> get item {
    return $NewArcadeLocationEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MaintainerNewLocationImplCopyWith<$Res>
    implements $MaintainerNewLocationCopyWith<$Res> {
  factory _$$MaintainerNewLocationImplCopyWith(
          _$MaintainerNewLocationImpl value,
          $Res Function(_$MaintainerNewLocationImpl) then) =
      __$$MaintainerNewLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ArcadeCenterEntity> arcadeCenters,
      List<CityEntity> cities,
      NewArcadeLocationEntity item});

  @override
  $NewArcadeLocationEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$MaintainerNewLocationImplCopyWithImpl<$Res>
    extends _$MaintainerNewLocationCopyWithImpl<$Res,
        _$MaintainerNewLocationImpl>
    implements _$$MaintainerNewLocationImplCopyWith<$Res> {
  __$$MaintainerNewLocationImplCopyWithImpl(_$MaintainerNewLocationImpl _value,
      $Res Function(_$MaintainerNewLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arcadeCenters = null,
    Object? cities = null,
    Object? item = null,
  }) {
    return _then(_$MaintainerNewLocationImpl(
      arcadeCenters: null == arcadeCenters
          ? _value._arcadeCenters
          : arcadeCenters // ignore: cast_nullable_to_non_nullable
              as List<ArcadeCenterEntity>,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityEntity>,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as NewArcadeLocationEntity,
    ));
  }
}

/// @nodoc

class _$MaintainerNewLocationImpl implements _MaintainerNewLocation {
  _$MaintainerNewLocationImpl(
      {required final List<ArcadeCenterEntity> arcadeCenters,
      required final List<CityEntity> cities,
      required this.item})
      : _arcadeCenters = arcadeCenters,
        _cities = cities;

  final List<ArcadeCenterEntity> _arcadeCenters;
  @override
  List<ArcadeCenterEntity> get arcadeCenters {
    if (_arcadeCenters is EqualUnmodifiableListView) return _arcadeCenters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arcadeCenters);
  }

  final List<CityEntity> _cities;
  @override
  List<CityEntity> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  final NewArcadeLocationEntity item;

  @override
  String toString() {
    return 'MaintainerNewLocation(arcadeCenters: $arcadeCenters, cities: $cities, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintainerNewLocationImpl &&
            const DeepCollectionEquality()
                .equals(other._arcadeCenters, _arcadeCenters) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_arcadeCenters),
      const DeepCollectionEquality().hash(_cities),
      item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintainerNewLocationImplCopyWith<_$MaintainerNewLocationImpl>
      get copyWith => __$$MaintainerNewLocationImplCopyWithImpl<
          _$MaintainerNewLocationImpl>(this, _$identity);
}

abstract class _MaintainerNewLocation implements MaintainerNewLocation {
  factory _MaintainerNewLocation(
          {required final List<ArcadeCenterEntity> arcadeCenters,
          required final List<CityEntity> cities,
          required final NewArcadeLocationEntity item}) =
      _$MaintainerNewLocationImpl;

  @override
  List<ArcadeCenterEntity> get arcadeCenters;
  @override
  List<CityEntity> get cities;
  @override
  NewArcadeLocationEntity get item;
  @override
  @JsonKey(ignore: true)
  _$$MaintainerNewLocationImplCopyWith<_$MaintainerNewLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
