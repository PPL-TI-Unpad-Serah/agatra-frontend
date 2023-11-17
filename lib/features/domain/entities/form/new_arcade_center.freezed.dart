// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_arcade_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewArcadeCenterEntity {
  String get name => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewArcadeCenterEntityCopyWith<NewArcadeCenterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewArcadeCenterEntityCopyWith<$Res> {
  factory $NewArcadeCenterEntityCopyWith(NewArcadeCenterEntity value,
          $Res Function(NewArcadeCenterEntity) then) =
      _$NewArcadeCenterEntityCopyWithImpl<$Res, NewArcadeCenterEntity>;
  @useResult
  $Res call({String name, String info});
}

/// @nodoc
class _$NewArcadeCenterEntityCopyWithImpl<$Res,
        $Val extends NewArcadeCenterEntity>
    implements $NewArcadeCenterEntityCopyWith<$Res> {
  _$NewArcadeCenterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewArcadeCenterEntityImplCopyWith<$Res>
    implements $NewArcadeCenterEntityCopyWith<$Res> {
  factory _$$NewArcadeCenterEntityImplCopyWith(
          _$NewArcadeCenterEntityImpl value,
          $Res Function(_$NewArcadeCenterEntityImpl) then) =
      __$$NewArcadeCenterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String info});
}

/// @nodoc
class __$$NewArcadeCenterEntityImplCopyWithImpl<$Res>
    extends _$NewArcadeCenterEntityCopyWithImpl<$Res,
        _$NewArcadeCenterEntityImpl>
    implements _$$NewArcadeCenterEntityImplCopyWith<$Res> {
  __$$NewArcadeCenterEntityImplCopyWithImpl(_$NewArcadeCenterEntityImpl _value,
      $Res Function(_$NewArcadeCenterEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? info = null,
  }) {
    return _then(_$NewArcadeCenterEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewArcadeCenterEntityImpl implements _NewArcadeCenterEntity {
  _$NewArcadeCenterEntityImpl({required this.name, required this.info});

  @override
  final String name;
  @override
  final String info;

  @override
  String toString() {
    return 'NewArcadeCenterEntity(name: $name, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewArcadeCenterEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewArcadeCenterEntityImplCopyWith<_$NewArcadeCenterEntityImpl>
      get copyWith => __$$NewArcadeCenterEntityImplCopyWithImpl<
          _$NewArcadeCenterEntityImpl>(this, _$identity);
}

abstract class _NewArcadeCenterEntity implements NewArcadeCenterEntity {
  factory _NewArcadeCenterEntity(
      {required final String name,
      required final String info}) = _$NewArcadeCenterEntityImpl;

  @override
  String get name;
  @override
  String get info;
  @override
  @JsonKey(ignore: true)
  _$$NewArcadeCenterEntityImplCopyWith<_$NewArcadeCenterEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
