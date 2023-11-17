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
mixin _$AdminArcadeCentersEdit {
  int get originalItemHash => throw _privateConstructorUsedError;
  ArcadeCenterEntity get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminArcadeCentersEditCopyWith<AdminArcadeCentersEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminArcadeCentersEditCopyWith<$Res> {
  factory $AdminArcadeCentersEditCopyWith(AdminArcadeCentersEdit value,
          $Res Function(AdminArcadeCentersEdit) then) =
      _$AdminArcadeCentersEditCopyWithImpl<$Res, AdminArcadeCentersEdit>;
  @useResult
  $Res call({int originalItemHash, ArcadeCenterEntity item});

  $ArcadeCenterEntityCopyWith<$Res> get item;
}

/// @nodoc
class _$AdminArcadeCentersEditCopyWithImpl<$Res,
        $Val extends AdminArcadeCentersEdit>
    implements $AdminArcadeCentersEditCopyWith<$Res> {
  _$AdminArcadeCentersEditCopyWithImpl(this._value, this._then);

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
              as ArcadeCenterEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArcadeCenterEntityCopyWith<$Res> get item {
    return $ArcadeCenterEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminArcadeCentersEditImplCopyWith<$Res>
    implements $AdminArcadeCentersEditCopyWith<$Res> {
  factory _$$AdminArcadeCentersEditImplCopyWith(
          _$AdminArcadeCentersEditImpl value,
          $Res Function(_$AdminArcadeCentersEditImpl) then) =
      __$$AdminArcadeCentersEditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int originalItemHash, ArcadeCenterEntity item});

  @override
  $ArcadeCenterEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$AdminArcadeCentersEditImplCopyWithImpl<$Res>
    extends _$AdminArcadeCentersEditCopyWithImpl<$Res,
        _$AdminArcadeCentersEditImpl>
    implements _$$AdminArcadeCentersEditImplCopyWith<$Res> {
  __$$AdminArcadeCentersEditImplCopyWithImpl(
      _$AdminArcadeCentersEditImpl _value,
      $Res Function(_$AdminArcadeCentersEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalItemHash = null,
    Object? item = null,
  }) {
    return _then(_$AdminArcadeCentersEditImpl(
      originalItemHash: null == originalItemHash
          ? _value.originalItemHash
          : originalItemHash // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ArcadeCenterEntity,
    ));
  }
}

/// @nodoc

class _$AdminArcadeCentersEditImpl implements _AdminArcadeCentersEdit {
  _$AdminArcadeCentersEditImpl(
      {required this.originalItemHash, required this.item});

  @override
  final int originalItemHash;
  @override
  final ArcadeCenterEntity item;

  @override
  String toString() {
    return 'AdminArcadeCentersEdit(originalItemHash: $originalItemHash, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminArcadeCentersEditImpl &&
            (identical(other.originalItemHash, originalItemHash) ||
                other.originalItemHash == originalItemHash) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, originalItemHash, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminArcadeCentersEditImplCopyWith<_$AdminArcadeCentersEditImpl>
      get copyWith => __$$AdminArcadeCentersEditImplCopyWithImpl<
          _$AdminArcadeCentersEditImpl>(this, _$identity);
}

abstract class _AdminArcadeCentersEdit implements AdminArcadeCentersEdit {
  factory _AdminArcadeCentersEdit(
      {required final int originalItemHash,
      required final ArcadeCenterEntity item}) = _$AdminArcadeCentersEditImpl;

  @override
  int get originalItemHash;
  @override
  ArcadeCenterEntity get item;
  @override
  @JsonKey(ignore: true)
  _$$AdminArcadeCentersEditImplCopyWith<_$AdminArcadeCentersEditImpl>
      get copyWith => throw _privateConstructorUsedError;
}
