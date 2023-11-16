// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arcade_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArcadeCenterEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArcadeCenterEntityCopyWith<ArcadeCenterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArcadeCenterEntityCopyWith<$Res> {
  factory $ArcadeCenterEntityCopyWith(
          ArcadeCenterEntity value, $Res Function(ArcadeCenterEntity) then) =
      _$ArcadeCenterEntityCopyWithImpl<$Res, ArcadeCenterEntity>;
  @useResult
  $Res call({int id, String name, String info});
}

/// @nodoc
class _$ArcadeCenterEntityCopyWithImpl<$Res, $Val extends ArcadeCenterEntity>
    implements $ArcadeCenterEntityCopyWith<$Res> {
  _$ArcadeCenterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? info = null,
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
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArcadeCenterEntityImplCopyWith<$Res>
    implements $ArcadeCenterEntityCopyWith<$Res> {
  factory _$$ArcadeCenterEntityImplCopyWith(_$ArcadeCenterEntityImpl value,
          $Res Function(_$ArcadeCenterEntityImpl) then) =
      __$$ArcadeCenterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String info});
}

/// @nodoc
class __$$ArcadeCenterEntityImplCopyWithImpl<$Res>
    extends _$ArcadeCenterEntityCopyWithImpl<$Res, _$ArcadeCenterEntityImpl>
    implements _$$ArcadeCenterEntityImplCopyWith<$Res> {
  __$$ArcadeCenterEntityImplCopyWithImpl(_$ArcadeCenterEntityImpl _value,
      $Res Function(_$ArcadeCenterEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? info = null,
  }) {
    return _then(_$ArcadeCenterEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$ArcadeCenterEntityImpl implements _ArcadeCenterEntity {
  _$ArcadeCenterEntityImpl(
      {required this.id, required this.name, required this.info});

  @override
  final int id;
  @override
  final String name;
  @override
  final String info;

  @override
  String toString() {
    return 'ArcadeCenterEntity(id: $id, name: $name, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArcadeCenterEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArcadeCenterEntityImplCopyWith<_$ArcadeCenterEntityImpl> get copyWith =>
      __$$ArcadeCenterEntityImplCopyWithImpl<_$ArcadeCenterEntityImpl>(
          this, _$identity);
}

abstract class _ArcadeCenterEntity implements ArcadeCenterEntity {
  factory _ArcadeCenterEntity(
      {required final int id,
      required final String name,
      required final String info}) = _$ArcadeCenterEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get info;
  @override
  @JsonKey(ignore: true)
  _$$ArcadeCenterEntityImplCopyWith<_$ArcadeCenterEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
