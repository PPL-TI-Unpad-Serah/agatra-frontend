// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_game_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewGameTitleEntity {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewGameTitleEntityCopyWith<NewGameTitleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewGameTitleEntityCopyWith<$Res> {
  factory $NewGameTitleEntityCopyWith(
          NewGameTitleEntity value, $Res Function(NewGameTitleEntity) then) =
      _$NewGameTitleEntityCopyWithImpl<$Res, NewGameTitleEntity>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$NewGameTitleEntityCopyWithImpl<$Res, $Val extends NewGameTitleEntity>
    implements $NewGameTitleEntityCopyWith<$Res> {
  _$NewGameTitleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewGameTitleEntityImplCopyWith<$Res>
    implements $NewGameTitleEntityCopyWith<$Res> {
  factory _$$NewGameTitleEntityImplCopyWith(_$NewGameTitleEntityImpl value,
          $Res Function(_$NewGameTitleEntityImpl) then) =
      __$$NewGameTitleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NewGameTitleEntityImplCopyWithImpl<$Res>
    extends _$NewGameTitleEntityCopyWithImpl<$Res, _$NewGameTitleEntityImpl>
    implements _$$NewGameTitleEntityImplCopyWith<$Res> {
  __$$NewGameTitleEntityImplCopyWithImpl(_$NewGameTitleEntityImpl _value,
      $Res Function(_$NewGameTitleEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NewGameTitleEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewGameTitleEntityImpl implements _NewGameTitleEntity {
  _$NewGameTitleEntityImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'NewGameTitleEntity(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewGameTitleEntityImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewGameTitleEntityImplCopyWith<_$NewGameTitleEntityImpl> get copyWith =>
      __$$NewGameTitleEntityImplCopyWithImpl<_$NewGameTitleEntityImpl>(
          this, _$identity);
}

abstract class _NewGameTitleEntity implements NewGameTitleEntity {
  factory _NewGameTitleEntity({required final String name}) =
      _$NewGameTitleEntityImpl;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$NewGameTitleEntityImplCopyWith<_$NewGameTitleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
