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
mixin _$AdminCitiesEdit {
  int get originalItemHash => throw _privateConstructorUsedError;
  CityEntity get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminCitiesEditCopyWith<AdminCitiesEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCitiesEditCopyWith<$Res> {
  factory $AdminCitiesEditCopyWith(
          AdminCitiesEdit value, $Res Function(AdminCitiesEdit) then) =
      _$AdminCitiesEditCopyWithImpl<$Res, AdminCitiesEdit>;
  @useResult
  $Res call({int originalItemHash, CityEntity item});

  $CityEntityCopyWith<$Res> get item;
}

/// @nodoc
class _$AdminCitiesEditCopyWithImpl<$Res, $Val extends AdminCitiesEdit>
    implements $AdminCitiesEditCopyWith<$Res> {
  _$AdminCitiesEditCopyWithImpl(this._value, this._then);

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
              as CityEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityEntityCopyWith<$Res> get item {
    return $CityEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminCitiesEditImplCopyWith<$Res>
    implements $AdminCitiesEditCopyWith<$Res> {
  factory _$$AdminCitiesEditImplCopyWith(_$AdminCitiesEditImpl value,
          $Res Function(_$AdminCitiesEditImpl) then) =
      __$$AdminCitiesEditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int originalItemHash, CityEntity item});

  @override
  $CityEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$AdminCitiesEditImplCopyWithImpl<$Res>
    extends _$AdminCitiesEditCopyWithImpl<$Res, _$AdminCitiesEditImpl>
    implements _$$AdminCitiesEditImplCopyWith<$Res> {
  __$$AdminCitiesEditImplCopyWithImpl(
      _$AdminCitiesEditImpl _value, $Res Function(_$AdminCitiesEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalItemHash = null,
    Object? item = null,
  }) {
    return _then(_$AdminCitiesEditImpl(
      originalItemHash: null == originalItemHash
          ? _value.originalItemHash
          : originalItemHash // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CityEntity,
    ));
  }
}

/// @nodoc

class _$AdminCitiesEditImpl implements _AdminCitiesEdit {
  _$AdminCitiesEditImpl({required this.originalItemHash, required this.item});

  @override
  final int originalItemHash;
  @override
  final CityEntity item;

  @override
  String toString() {
    return 'AdminCitiesEdit(originalItemHash: $originalItemHash, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCitiesEditImpl &&
            (identical(other.originalItemHash, originalItemHash) ||
                other.originalItemHash == originalItemHash) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, originalItemHash, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminCitiesEditImplCopyWith<_$AdminCitiesEditImpl> get copyWith =>
      __$$AdminCitiesEditImplCopyWithImpl<_$AdminCitiesEditImpl>(
          this, _$identity);
}

abstract class _AdminCitiesEdit implements AdminCitiesEdit {
  factory _AdminCitiesEdit(
      {required final int originalItemHash,
      required final CityEntity item}) = _$AdminCitiesEditImpl;

  @override
  int get originalItemHash;
  @override
  CityEntity get item;
  @override
  @JsonKey(ignore: true)
  _$$AdminCitiesEditImplCopyWith<_$AdminCitiesEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
