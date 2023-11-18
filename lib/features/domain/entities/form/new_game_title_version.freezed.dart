// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_game_title_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewGameTitleVersionEntity {
  String get title => throw _privateConstructorUsedError;
  GameTitleCompactEntity get version => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewGameTitleVersionEntityCopyWith<NewGameTitleVersionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewGameTitleVersionEntityCopyWith<$Res> {
  factory $NewGameTitleVersionEntityCopyWith(NewGameTitleVersionEntity value,
          $Res Function(NewGameTitleVersionEntity) then) =
      _$NewGameTitleVersionEntityCopyWithImpl<$Res, NewGameTitleVersionEntity>;
  @useResult
  $Res call({String title, GameTitleCompactEntity version});

  $GameTitleCompactEntityCopyWith<$Res> get version;
}

/// @nodoc
class _$NewGameTitleVersionEntityCopyWithImpl<$Res,
        $Val extends NewGameTitleVersionEntity>
    implements $NewGameTitleVersionEntityCopyWith<$Res> {
  _$NewGameTitleVersionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as GameTitleCompactEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameTitleCompactEntityCopyWith<$Res> get version {
    return $GameTitleCompactEntityCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewGameTitleVersionEntityImplCopyWith<$Res>
    implements $NewGameTitleVersionEntityCopyWith<$Res> {
  factory _$$NewGameTitleVersionEntityImplCopyWith(
          _$NewGameTitleVersionEntityImpl value,
          $Res Function(_$NewGameTitleVersionEntityImpl) then) =
      __$$NewGameTitleVersionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, GameTitleCompactEntity version});

  @override
  $GameTitleCompactEntityCopyWith<$Res> get version;
}

/// @nodoc
class __$$NewGameTitleVersionEntityImplCopyWithImpl<$Res>
    extends _$NewGameTitleVersionEntityCopyWithImpl<$Res,
        _$NewGameTitleVersionEntityImpl>
    implements _$$NewGameTitleVersionEntityImplCopyWith<$Res> {
  __$$NewGameTitleVersionEntityImplCopyWithImpl(
      _$NewGameTitleVersionEntityImpl _value,
      $Res Function(_$NewGameTitleVersionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? version = null,
  }) {
    return _then(_$NewGameTitleVersionEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as GameTitleCompactEntity,
    ));
  }
}

/// @nodoc

class _$NewGameTitleVersionEntityImpl implements _NewGameTitleVersionEntity {
  _$NewGameTitleVersionEntityImpl({required this.title, required this.version});

  @override
  final String title;
  @override
  final GameTitleCompactEntity version;

  @override
  String toString() {
    return 'NewGameTitleVersionEntity(title: $title, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewGameTitleVersionEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewGameTitleVersionEntityImplCopyWith<_$NewGameTitleVersionEntityImpl>
      get copyWith => __$$NewGameTitleVersionEntityImplCopyWithImpl<
          _$NewGameTitleVersionEntityImpl>(this, _$identity);
}

abstract class _NewGameTitleVersionEntity implements NewGameTitleVersionEntity {
  factory _NewGameTitleVersionEntity(
          {required final String title,
          required final GameTitleCompactEntity version}) =
      _$NewGameTitleVersionEntityImpl;

  @override
  String get title;
  @override
  GameTitleCompactEntity get version;
  @override
  @JsonKey(ignore: true)
  _$$NewGameTitleVersionEntityImplCopyWith<_$NewGameTitleVersionEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
