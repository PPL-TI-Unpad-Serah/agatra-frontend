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
mixin _$AdminNewCities {
  int get originalItemHash => throw _privateConstructorUsedError;
  NewCityEntity get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminNewCitiesCopyWith<AdminNewCities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminNewCitiesCopyWith<$Res> {
  factory $AdminNewCitiesCopyWith(
          AdminNewCities value, $Res Function(AdminNewCities) then) =
      _$AdminNewCitiesCopyWithImpl<$Res, AdminNewCities>;
  @useResult
  $Res call({int originalItemHash, NewCityEntity item});

  $NewCityEntityCopyWith<$Res> get item;
}

/// @nodoc
class _$AdminNewCitiesCopyWithImpl<$Res, $Val extends AdminNewCities>
    implements $AdminNewCitiesCopyWith<$Res> {
  _$AdminNewCitiesCopyWithImpl(this._value, this._then);

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
              as NewCityEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewCityEntityCopyWith<$Res> get item {
    return $NewCityEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminNewCitiesImplCopyWith<$Res>
    implements $AdminNewCitiesCopyWith<$Res> {
  factory _$$AdminNewCitiesImplCopyWith(_$AdminNewCitiesImpl value,
          $Res Function(_$AdminNewCitiesImpl) then) =
      __$$AdminNewCitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int originalItemHash, NewCityEntity item});

  @override
  $NewCityEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$AdminNewCitiesImplCopyWithImpl<$Res>
    extends _$AdminNewCitiesCopyWithImpl<$Res, _$AdminNewCitiesImpl>
    implements _$$AdminNewCitiesImplCopyWith<$Res> {
  __$$AdminNewCitiesImplCopyWithImpl(
      _$AdminNewCitiesImpl _value, $Res Function(_$AdminNewCitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalItemHash = null,
    Object? item = null,
  }) {
    return _then(_$AdminNewCitiesImpl(
      originalItemHash: null == originalItemHash
          ? _value.originalItemHash
          : originalItemHash // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as NewCityEntity,
    ));
  }
}

/// @nodoc

class _$AdminNewCitiesImpl implements _AdminNewCities {
  _$AdminNewCitiesImpl({required this.originalItemHash, required this.item});

  @override
  final int originalItemHash;
  @override
  final NewCityEntity item;

  @override
  String toString() {
    return 'AdminNewCities(originalItemHash: $originalItemHash, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminNewCitiesImpl &&
            (identical(other.originalItemHash, originalItemHash) ||
                other.originalItemHash == originalItemHash) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, originalItemHash, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminNewCitiesImplCopyWith<_$AdminNewCitiesImpl> get copyWith =>
      __$$AdminNewCitiesImplCopyWithImpl<_$AdminNewCitiesImpl>(
          this, _$identity);
}

abstract class _AdminNewCities implements AdminNewCities {
  factory _AdminNewCities(
      {required final int originalItemHash,
      required final NewCityEntity item}) = _$AdminNewCitiesImpl;

  @override
  int get originalItemHash;
  @override
  NewCityEntity get item;
  @override
  @JsonKey(ignore: true)
  _$$AdminNewCitiesImplCopyWith<_$AdminNewCitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
