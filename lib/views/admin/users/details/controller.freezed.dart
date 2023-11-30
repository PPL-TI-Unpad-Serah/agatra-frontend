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
mixin _$AdminUsersEdit {
  UserEntity get originalItem => throw _privateConstructorUsedError;
  UserEntity get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminUsersEditCopyWith<AdminUsersEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminUsersEditCopyWith<$Res> {
  factory $AdminUsersEditCopyWith(
          AdminUsersEdit value, $Res Function(AdminUsersEdit) then) =
      _$AdminUsersEditCopyWithImpl<$Res, AdminUsersEdit>;
  @useResult
  $Res call({UserEntity originalItem, UserEntity item});

  $UserEntityCopyWith<$Res> get originalItem;
  $UserEntityCopyWith<$Res> get item;
}

/// @nodoc
class _$AdminUsersEditCopyWithImpl<$Res, $Val extends AdminUsersEdit>
    implements $AdminUsersEditCopyWith<$Res> {
  _$AdminUsersEditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalItem = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      originalItem: null == originalItem
          ? _value.originalItem
          : originalItem // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get originalItem {
    return $UserEntityCopyWith<$Res>(_value.originalItem, (value) {
      return _then(_value.copyWith(originalItem: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get item {
    return $UserEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminUsersEditImplCopyWith<$Res>
    implements $AdminUsersEditCopyWith<$Res> {
  factory _$$AdminUsersEditImplCopyWith(_$AdminUsersEditImpl value,
          $Res Function(_$AdminUsersEditImpl) then) =
      __$$AdminUsersEditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity originalItem, UserEntity item});

  @override
  $UserEntityCopyWith<$Res> get originalItem;
  @override
  $UserEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$AdminUsersEditImplCopyWithImpl<$Res>
    extends _$AdminUsersEditCopyWithImpl<$Res, _$AdminUsersEditImpl>
    implements _$$AdminUsersEditImplCopyWith<$Res> {
  __$$AdminUsersEditImplCopyWithImpl(
      _$AdminUsersEditImpl _value, $Res Function(_$AdminUsersEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalItem = null,
    Object? item = null,
  }) {
    return _then(_$AdminUsersEditImpl(
      originalItem: null == originalItem
          ? _value.originalItem
          : originalItem // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$AdminUsersEditImpl implements _AdminUsersEdit {
  _$AdminUsersEditImpl({required this.originalItem, required this.item});

  @override
  final UserEntity originalItem;
  @override
  final UserEntity item;

  @override
  String toString() {
    return 'AdminUsersEdit(originalItem: $originalItem, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminUsersEditImpl &&
            (identical(other.originalItem, originalItem) ||
                other.originalItem == originalItem) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, originalItem, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminUsersEditImplCopyWith<_$AdminUsersEditImpl> get copyWith =>
      __$$AdminUsersEditImplCopyWithImpl<_$AdminUsersEditImpl>(
          this, _$identity);
}

abstract class _AdminUsersEdit implements AdminUsersEdit {
  factory _AdminUsersEdit(
      {required final UserEntity originalItem,
      required final UserEntity item}) = _$AdminUsersEditImpl;

  @override
  UserEntity get originalItem;
  @override
  UserEntity get item;
  @override
  @JsonKey(ignore: true)
  _$$AdminUsersEditImplCopyWith<_$AdminUsersEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
