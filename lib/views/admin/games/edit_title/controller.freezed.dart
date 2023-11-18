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
mixin _$AdminGamesEditTitle {
  int get originalItemHash => throw _privateConstructorUsedError;
  GameTitleCompactEntity get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminGamesEditTitleCopyWith<AdminGamesEditTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminGamesEditTitleCopyWith<$Res> {
  factory $AdminGamesEditTitleCopyWith(
          AdminGamesEditTitle value, $Res Function(AdminGamesEditTitle) then) =
      _$AdminGamesEditTitleCopyWithImpl<$Res, AdminGamesEditTitle>;
  @useResult
  $Res call({int originalItemHash, GameTitleCompactEntity item});

  $GameTitleCompactEntityCopyWith<$Res> get item;
}

/// @nodoc
class _$AdminGamesEditTitleCopyWithImpl<$Res, $Val extends AdminGamesEditTitle>
    implements $AdminGamesEditTitleCopyWith<$Res> {
  _$AdminGamesEditTitleCopyWithImpl(this._value, this._then);

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
              as GameTitleCompactEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameTitleCompactEntityCopyWith<$Res> get item {
    return $GameTitleCompactEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminGamesEditTitleImplCopyWith<$Res>
    implements $AdminGamesEditTitleCopyWith<$Res> {
  factory _$$AdminGamesEditTitleImplCopyWith(_$AdminGamesEditTitleImpl value,
          $Res Function(_$AdminGamesEditTitleImpl) then) =
      __$$AdminGamesEditTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int originalItemHash, GameTitleCompactEntity item});

  @override
  $GameTitleCompactEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$AdminGamesEditTitleImplCopyWithImpl<$Res>
    extends _$AdminGamesEditTitleCopyWithImpl<$Res, _$AdminGamesEditTitleImpl>
    implements _$$AdminGamesEditTitleImplCopyWith<$Res> {
  __$$AdminGamesEditTitleImplCopyWithImpl(_$AdminGamesEditTitleImpl _value,
      $Res Function(_$AdminGamesEditTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalItemHash = null,
    Object? item = null,
  }) {
    return _then(_$AdminGamesEditTitleImpl(
      originalItemHash: null == originalItemHash
          ? _value.originalItemHash
          : originalItemHash // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as GameTitleCompactEntity,
    ));
  }
}

/// @nodoc

class _$AdminGamesEditTitleImpl implements _AdminGamesEditTitle {
  _$AdminGamesEditTitleImpl(
      {required this.originalItemHash, required this.item});

  @override
  final int originalItemHash;
  @override
  final GameTitleCompactEntity item;

  @override
  String toString() {
    return 'AdminGamesEditTitle(originalItemHash: $originalItemHash, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminGamesEditTitleImpl &&
            (identical(other.originalItemHash, originalItemHash) ||
                other.originalItemHash == originalItemHash) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, originalItemHash, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminGamesEditTitleImplCopyWith<_$AdminGamesEditTitleImpl> get copyWith =>
      __$$AdminGamesEditTitleImplCopyWithImpl<_$AdminGamesEditTitleImpl>(
          this, _$identity);
}

abstract class _AdminGamesEditTitle implements AdminGamesEditTitle {
  factory _AdminGamesEditTitle(
      {required final int originalItemHash,
      required final GameTitleCompactEntity item}) = _$AdminGamesEditTitleImpl;

  @override
  int get originalItemHash;
  @override
  GameTitleCompactEntity get item;
  @override
  @JsonKey(ignore: true)
  _$$AdminGamesEditTitleImplCopyWith<_$AdminGamesEditTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
