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
  String get title => throw _privateConstructorUsedError;

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
  $Res call({String title});
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
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
  $Res call({String title});
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
    Object? title = null,
  }) {
    return _then(_$NewGameTitleEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewGameTitleEntityImpl implements _NewGameTitleEntity {
  _$NewGameTitleEntityImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'NewGameTitleEntity(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewGameTitleEntityImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewGameTitleEntityImplCopyWith<_$NewGameTitleEntityImpl> get copyWith =>
      __$$NewGameTitleEntityImplCopyWithImpl<_$NewGameTitleEntityImpl>(
          this, _$identity);
}

abstract class _NewGameTitleEntity implements NewGameTitleEntity {
  factory _NewGameTitleEntity({required final String title}) =
      _$NewGameTitleEntityImpl;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$NewGameTitleEntityImplCopyWith<_$NewGameTitleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
