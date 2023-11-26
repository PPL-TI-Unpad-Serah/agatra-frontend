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
mixin _$MapPickerState {
  bool get previouslyNull => throw _privateConstructorUsedError;
  LatLng? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapPickerStateCopyWith<MapPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapPickerStateCopyWith<$Res> {
  factory $MapPickerStateCopyWith(
          MapPickerState value, $Res Function(MapPickerState) then) =
      _$MapPickerStateCopyWithImpl<$Res, MapPickerState>;
  @useResult
  $Res call({bool previouslyNull, LatLng? value});
}

/// @nodoc
class _$MapPickerStateCopyWithImpl<$Res, $Val extends MapPickerState>
    implements $MapPickerStateCopyWith<$Res> {
  _$MapPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previouslyNull = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      previouslyNull: null == previouslyNull
          ? _value.previouslyNull
          : previouslyNull // ignore: cast_nullable_to_non_nullable
              as bool,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapPickerStateImplCopyWith<$Res>
    implements $MapPickerStateCopyWith<$Res> {
  factory _$$MapPickerStateImplCopyWith(_$MapPickerStateImpl value,
          $Res Function(_$MapPickerStateImpl) then) =
      __$$MapPickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool previouslyNull, LatLng? value});
}

/// @nodoc
class __$$MapPickerStateImplCopyWithImpl<$Res>
    extends _$MapPickerStateCopyWithImpl<$Res, _$MapPickerStateImpl>
    implements _$$MapPickerStateImplCopyWith<$Res> {
  __$$MapPickerStateImplCopyWithImpl(
      _$MapPickerStateImpl _value, $Res Function(_$MapPickerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previouslyNull = null,
    Object? value = freezed,
  }) {
    return _then(_$MapPickerStateImpl(
      previouslyNull: null == previouslyNull
          ? _value.previouslyNull
          : previouslyNull // ignore: cast_nullable_to_non_nullable
              as bool,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$MapPickerStateImpl implements _MapPickerState {
  const _$MapPickerStateImpl({this.previouslyNull = false, this.value});

  @override
  @JsonKey()
  final bool previouslyNull;
  @override
  final LatLng? value;

  @override
  String toString() {
    return 'MapPickerState(previouslyNull: $previouslyNull, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapPickerStateImpl &&
            (identical(other.previouslyNull, previouslyNull) ||
                other.previouslyNull == previouslyNull) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, previouslyNull, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapPickerStateImplCopyWith<_$MapPickerStateImpl> get copyWith =>
      __$$MapPickerStateImplCopyWithImpl<_$MapPickerStateImpl>(
          this, _$identity);
}

abstract class _MapPickerState implements MapPickerState {
  const factory _MapPickerState(
      {final bool previouslyNull, final LatLng? value}) = _$MapPickerStateImpl;

  @override
  bool get previouslyNull;
  @override
  LatLng? get value;
  @override
  @JsonKey(ignore: true)
  _$$MapPickerStateImplCopyWith<_$MapPickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
