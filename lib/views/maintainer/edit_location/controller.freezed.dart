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
mixin _$MaintainerLocationEdit {
  List<ArcadeCenterEntity> get arcadeCenters =>
      throw _privateConstructorUsedError;
  List<CityEntity> get cities => throw _privateConstructorUsedError;
  int get originalItemHash => throw _privateConstructorUsedError;
  ArcadeLocationEntity get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaintainerLocationEditCopyWith<MaintainerLocationEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintainerLocationEditCopyWith<$Res> {
  factory $MaintainerLocationEditCopyWith(MaintainerLocationEdit value,
          $Res Function(MaintainerLocationEdit) then) =
      _$MaintainerLocationEditCopyWithImpl<$Res, MaintainerLocationEdit>;
  @useResult
  $Res call(
      {List<ArcadeCenterEntity> arcadeCenters,
      List<CityEntity> cities,
      int originalItemHash,
      ArcadeLocationEntity item});

  $ArcadeLocationEntityCopyWith<$Res> get item;
}

/// @nodoc
class _$MaintainerLocationEditCopyWithImpl<$Res,
        $Val extends MaintainerLocationEdit>
    implements $MaintainerLocationEditCopyWith<$Res> {
  _$MaintainerLocationEditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arcadeCenters = null,
    Object? cities = null,
    Object? originalItemHash = null,
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
      originalItemHash: null == originalItemHash
          ? _value.originalItemHash
          : originalItemHash // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ArcadeLocationEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArcadeLocationEntityCopyWith<$Res> get item {
    return $ArcadeLocationEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MaintainerLocationEditImplCopyWith<$Res>
    implements $MaintainerLocationEditCopyWith<$Res> {
  factory _$$MaintainerLocationEditImplCopyWith(
          _$MaintainerLocationEditImpl value,
          $Res Function(_$MaintainerLocationEditImpl) then) =
      __$$MaintainerLocationEditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ArcadeCenterEntity> arcadeCenters,
      List<CityEntity> cities,
      int originalItemHash,
      ArcadeLocationEntity item});

  @override
  $ArcadeLocationEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$MaintainerLocationEditImplCopyWithImpl<$Res>
    extends _$MaintainerLocationEditCopyWithImpl<$Res,
        _$MaintainerLocationEditImpl>
    implements _$$MaintainerLocationEditImplCopyWith<$Res> {
  __$$MaintainerLocationEditImplCopyWithImpl(
      _$MaintainerLocationEditImpl _value,
      $Res Function(_$MaintainerLocationEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arcadeCenters = null,
    Object? cities = null,
    Object? originalItemHash = null,
    Object? item = null,
  }) {
    return _then(_$MaintainerLocationEditImpl(
      arcadeCenters: null == arcadeCenters
          ? _value._arcadeCenters
          : arcadeCenters // ignore: cast_nullable_to_non_nullable
              as List<ArcadeCenterEntity>,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityEntity>,
      originalItemHash: null == originalItemHash
          ? _value.originalItemHash
          : originalItemHash // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ArcadeLocationEntity,
    ));
  }
}

/// @nodoc

class _$MaintainerLocationEditImpl implements _MaintainerLocationEdit {
  _$MaintainerLocationEditImpl(
      {required final List<ArcadeCenterEntity> arcadeCenters,
      required final List<CityEntity> cities,
      required this.originalItemHash,
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
  final int originalItemHash;
  @override
  final ArcadeLocationEntity item;

  @override
  String toString() {
    return 'MaintainerLocationEdit(arcadeCenters: $arcadeCenters, cities: $cities, originalItemHash: $originalItemHash, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintainerLocationEditImpl &&
            const DeepCollectionEquality()
                .equals(other._arcadeCenters, _arcadeCenters) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.originalItemHash, originalItemHash) ||
                other.originalItemHash == originalItemHash) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_arcadeCenters),
      const DeepCollectionEquality().hash(_cities),
      originalItemHash,
      item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintainerLocationEditImplCopyWith<_$MaintainerLocationEditImpl>
      get copyWith => __$$MaintainerLocationEditImplCopyWithImpl<
          _$MaintainerLocationEditImpl>(this, _$identity);
}

abstract class _MaintainerLocationEdit implements MaintainerLocationEdit {
  factory _MaintainerLocationEdit(
      {required final List<ArcadeCenterEntity> arcadeCenters,
      required final List<CityEntity> cities,
      required final int originalItemHash,
      required final ArcadeLocationEntity item}) = _$MaintainerLocationEditImpl;

  @override
  List<ArcadeCenterEntity> get arcadeCenters;
  @override
  List<CityEntity> get cities;
  @override
  int get originalItemHash;
  @override
  ArcadeLocationEntity get item;
  @override
  @JsonKey(ignore: true)
  _$$MaintainerLocationEditImplCopyWith<_$MaintainerLocationEditImpl>
      get copyWith => throw _privateConstructorUsedError;
}
