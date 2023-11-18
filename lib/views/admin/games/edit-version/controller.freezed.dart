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
mixin _$AdminGamesEditVersion {
  int get originalItemHash => throw _privateConstructorUsedError;
  GameTitleVersionEntity get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminGamesEditVersionCopyWith<AdminGamesEditVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminGamesEditVersionCopyWith<$Res> {
  factory $AdminGamesEditVersionCopyWith(AdminGamesEditVersion value,
          $Res Function(AdminGamesEditVersion) then) =
      _$AdminGamesEditVersionCopyWithImpl<$Res, AdminGamesEditVersion>;
  @useResult
  $Res call({int originalItemHash, GameTitleVersionEntity item});

  $GameTitleVersionEntityCopyWith<$Res> get item;
}

/// @nodoc
class _$AdminGamesEditVersionCopyWithImpl<$Res,
        $Val extends AdminGamesEditVersion>
    implements $AdminGamesEditVersionCopyWith<$Res> {
  _$AdminGamesEditVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalItemHash = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      originalItemHash: null == originalItemHash
          ? _value.originalItemHash
          : originalItemHash // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as GameTitleVersionEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameTitleVersionEntityCopyWith<$Res> get item {
    return $GameTitleVersionEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminGamesEditVersionImplCopyWith<$Res>
    implements $AdminGamesEditVersionCopyWith<$Res> {
  factory _$$AdminGamesEditVersionImplCopyWith(
          _$AdminGamesEditVersionImpl value,
          $Res Function(_$AdminGamesEditVersionImpl) then) =
      __$$AdminGamesEditVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int originalItemHash, GameTitleVersionEntity item});

  @override
  $GameTitleVersionEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$AdminGamesEditVersionImplCopyWithImpl<$Res>
    extends _$AdminGamesEditVersionCopyWithImpl<$Res,
        _$AdminGamesEditVersionImpl>
    implements _$$AdminGamesEditVersionImplCopyWith<$Res> {
  __$$AdminGamesEditVersionImplCopyWithImpl(_$AdminGamesEditVersionImpl _value,
      $Res Function(_$AdminGamesEditVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalItemHash = null,
    Object? item = null,
  }) {
    return _then(_$AdminGamesEditVersionImpl(
      originalItemHash: null == originalItemHash
          ? _value.originalItemHash
          : originalItemHash // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as GameTitleVersionEntity,
    ));
  }
}

/// @nodoc

class _$AdminGamesEditVersionImpl implements _AdminGamesEditVersion {
  _$AdminGamesEditVersionImpl(
      {required this.originalItemHash, required this.item});

  @override
  final int originalItemHash;
  @override
  final GameTitleVersionEntity item;

  @override
  String toString() {
    return 'AdminGamesEditVersion(originalItemHash: $originalItemHash, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminGamesEditVersionImpl &&
            (identical(other.originalItemHash, originalItemHash) ||
                other.originalItemHash == originalItemHash) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, originalItemHash, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminGamesEditVersionImplCopyWith<_$AdminGamesEditVersionImpl>
      get copyWith => __$$AdminGamesEditVersionImplCopyWithImpl<
          _$AdminGamesEditVersionImpl>(this, _$identity);
}

abstract class _AdminGamesEditVersion implements AdminGamesEditVersion {
  factory _AdminGamesEditVersion(
          {required final int originalItemHash,
          required final GameTitleVersionEntity item}) =
      _$AdminGamesEditVersionImpl;

  @override
  int get originalItemHash;
  @override
  GameTitleVersionEntity get item;
  @override
  @JsonKey(ignore: true)
  _$$AdminGamesEditVersionImplCopyWith<_$AdminGamesEditVersionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
