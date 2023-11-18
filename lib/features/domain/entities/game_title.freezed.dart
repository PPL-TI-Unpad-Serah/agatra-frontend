// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameTitleEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<GameTitleVersionCompactEntity> get versions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameTitleEntityCopyWith<GameTitleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameTitleEntityCopyWith<$Res> {
  factory $GameTitleEntityCopyWith(
          GameTitleEntity value, $Res Function(GameTitleEntity) then) =
      _$GameTitleEntityCopyWithImpl<$Res, GameTitleEntity>;
  @useResult
  $Res call(
      {int id, String name, List<GameTitleVersionCompactEntity> versions});
}

/// @nodoc
class _$GameTitleEntityCopyWithImpl<$Res, $Val extends GameTitleEntity>
    implements $GameTitleEntityCopyWith<$Res> {
  _$GameTitleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? versions = null,
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
      versions: null == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<GameTitleVersionCompactEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameTitleEntityImplCopyWith<$Res>
    implements $GameTitleEntityCopyWith<$Res> {
  factory _$$GameTitleEntityImplCopyWith(_$GameTitleEntityImpl value,
          $Res Function(_$GameTitleEntityImpl) then) =
      __$$GameTitleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, List<GameTitleVersionCompactEntity> versions});
}

/// @nodoc
class __$$GameTitleEntityImplCopyWithImpl<$Res>
    extends _$GameTitleEntityCopyWithImpl<$Res, _$GameTitleEntityImpl>
    implements _$$GameTitleEntityImplCopyWith<$Res> {
  __$$GameTitleEntityImplCopyWithImpl(
      _$GameTitleEntityImpl _value, $Res Function(_$GameTitleEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? versions = null,
  }) {
    return _then(_$GameTitleEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versions: null == versions
          ? _value._versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<GameTitleVersionCompactEntity>,
    ));
  }
}

/// @nodoc

class _$GameTitleEntityImpl implements _GameTitleEntity {
  _$GameTitleEntityImpl(
      {required this.id,
      required this.name,
      required final List<GameTitleVersionCompactEntity> versions})
      : _versions = versions;

  @override
  final int id;
  @override
  final String name;
  final List<GameTitleVersionCompactEntity> _versions;
  @override
  List<GameTitleVersionCompactEntity> get versions {
    if (_versions is EqualUnmodifiableListView) return _versions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versions);
  }

  @override
  String toString() {
    return 'GameTitleEntity(id: $id, name: $name, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameTitleEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._versions, _versions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_versions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameTitleEntityImplCopyWith<_$GameTitleEntityImpl> get copyWith =>
      __$$GameTitleEntityImplCopyWithImpl<_$GameTitleEntityImpl>(
          this, _$identity);
}

abstract class _GameTitleEntity implements GameTitleEntity {
  factory _GameTitleEntity(
          {required final int id,
          required final String name,
          required final List<GameTitleVersionCompactEntity> versions}) =
      _$GameTitleEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  List<GameTitleVersionCompactEntity> get versions;
  @override
  @JsonKey(ignore: true)
  _$$GameTitleEntityImplCopyWith<_$GameTitleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
