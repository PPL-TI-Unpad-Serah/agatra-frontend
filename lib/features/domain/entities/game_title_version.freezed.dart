// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_title_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameTitleVersionEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  GameTitleCompactEntity get title => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameTitleVersionEntityCopyWith<GameTitleVersionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameTitleVersionEntityCopyWith<$Res> {
  factory $GameTitleVersionEntityCopyWith(GameTitleVersionEntity value,
          $Res Function(GameTitleVersionEntity) then) =
      _$GameTitleVersionEntityCopyWithImpl<$Res, GameTitleVersionEntity>;
  @useResult
  $Res call({int id, String name, GameTitleCompactEntity title, String info});

  $GameTitleCompactEntityCopyWith<$Res> get title;
}

/// @nodoc
class _$GameTitleVersionEntityCopyWithImpl<$Res,
        $Val extends GameTitleVersionEntity>
    implements $GameTitleVersionEntityCopyWith<$Res> {
  _$GameTitleVersionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as GameTitleCompactEntity,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameTitleCompactEntityCopyWith<$Res> get title {
    return $GameTitleCompactEntityCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameTitleVersionEntityImplCopyWith<$Res>
    implements $GameTitleVersionEntityCopyWith<$Res> {
  factory _$$GameTitleVersionEntityImplCopyWith(
          _$GameTitleVersionEntityImpl value,
          $Res Function(_$GameTitleVersionEntityImpl) then) =
      __$$GameTitleVersionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, GameTitleCompactEntity title, String info});

  @override
  $GameTitleCompactEntityCopyWith<$Res> get title;
}

/// @nodoc
class __$$GameTitleVersionEntityImplCopyWithImpl<$Res>
    extends _$GameTitleVersionEntityCopyWithImpl<$Res,
        _$GameTitleVersionEntityImpl>
    implements _$$GameTitleVersionEntityImplCopyWith<$Res> {
  __$$GameTitleVersionEntityImplCopyWithImpl(
      _$GameTitleVersionEntityImpl _value,
      $Res Function(_$GameTitleVersionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = null,
    Object? info = null,
  }) {
    return _then(_$GameTitleVersionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as GameTitleCompactEntity,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GameTitleVersionEntityImpl implements _GameTitleVersionEntity {
  _$GameTitleVersionEntityImpl(
      {required this.id,
      required this.name,
      required this.title,
      required this.info});

  @override
  final int id;
  @override
  final String name;
  @override
  final GameTitleCompactEntity title;
  @override
  final String info;

  @override
  String toString() {
    return 'GameTitleVersionEntity(id: $id, name: $name, title: $title, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameTitleVersionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, title, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameTitleVersionEntityImplCopyWith<_$GameTitleVersionEntityImpl>
      get copyWith => __$$GameTitleVersionEntityImplCopyWithImpl<
          _$GameTitleVersionEntityImpl>(this, _$identity);
}

abstract class _GameTitleVersionEntity implements GameTitleVersionEntity {
  factory _GameTitleVersionEntity(
      {required final int id,
      required final String name,
      required final GameTitleCompactEntity title,
      required final String info}) = _$GameTitleVersionEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  GameTitleCompactEntity get title;
  @override
  String get info;
  @override
  @JsonKey(ignore: true)
  _$$GameTitleVersionEntityImplCopyWith<_$GameTitleVersionEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
