// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewCityEntity {
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewCityEntityCopyWith<NewCityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCityEntityCopyWith<$Res> {
  factory $NewCityEntityCopyWith(
          NewCityEntity value, $Res Function(NewCityEntity) then) =
      _$NewCityEntityCopyWithImpl<$Res, NewCityEntity>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$NewCityEntityCopyWithImpl<$Res, $Val extends NewCityEntity>
    implements $NewCityEntityCopyWith<$Res> {
  _$NewCityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewCityEntityImplCopyWith<$Res>
    implements $NewCityEntityCopyWith<$Res> {
  factory _$$NewCityEntityImplCopyWith(
          _$NewCityEntityImpl value, $Res Function(_$NewCityEntityImpl) then) =
      __$$NewCityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$NewCityEntityImplCopyWithImpl<$Res>
    extends _$NewCityEntityCopyWithImpl<$Res, _$NewCityEntityImpl>
    implements _$$NewCityEntityImplCopyWith<$Res> {
  __$$NewCityEntityImplCopyWithImpl(
      _$NewCityEntityImpl _value, $Res Function(_$NewCityEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$NewCityEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewCityEntityImpl implements _NewCityEntity {
  _$NewCityEntityImpl({this.name});

  @override
  final String? name;

  @override
  String toString() {
    return 'NewCityEntity(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewCityEntityImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewCityEntityImplCopyWith<_$NewCityEntityImpl> get copyWith =>
      __$$NewCityEntityImplCopyWithImpl<_$NewCityEntityImpl>(this, _$identity);
}

abstract class _NewCityEntity implements NewCityEntity {
  factory _NewCityEntity({final String? name}) = _$NewCityEntityImpl;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$NewCityEntityImplCopyWith<_$NewCityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
