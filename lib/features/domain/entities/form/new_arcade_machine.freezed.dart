// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_arcade_machine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewArcadeMachineEntity {
  int get arcadeLocationId => throw _privateConstructorUsedError;
  GameTitleVersionEntity? get game => throw _privateConstructorUsedError;
  int? get machineCount => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewArcadeMachineEntityCopyWith<NewArcadeMachineEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewArcadeMachineEntityCopyWith<$Res> {
  factory $NewArcadeMachineEntityCopyWith(NewArcadeMachineEntity value,
          $Res Function(NewArcadeMachineEntity) then) =
      _$NewArcadeMachineEntityCopyWithImpl<$Res, NewArcadeMachineEntity>;
  @useResult
  $Res call(
      {int arcadeLocationId,
      GameTitleVersionEntity? game,
      int? machineCount,
      int? price,
      String? notes});

  $GameTitleVersionEntityCopyWith<$Res>? get game;
}

/// @nodoc
class _$NewArcadeMachineEntityCopyWithImpl<$Res,
        $Val extends NewArcadeMachineEntity>
    implements $NewArcadeMachineEntityCopyWith<$Res> {
  _$NewArcadeMachineEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arcadeLocationId = null,
    Object? game = freezed,
    Object? machineCount = freezed,
    Object? price = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      arcadeLocationId: null == arcadeLocationId
          ? _value.arcadeLocationId
          : arcadeLocationId // ignore: cast_nullable_to_non_nullable
              as int,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameTitleVersionEntity?,
      machineCount: freezed == machineCount
          ? _value.machineCount
          : machineCount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameTitleVersionEntityCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $GameTitleVersionEntityCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewArcadeMachineEntityImplCopyWith<$Res>
    implements $NewArcadeMachineEntityCopyWith<$Res> {
  factory _$$NewArcadeMachineEntityImplCopyWith(
          _$NewArcadeMachineEntityImpl value,
          $Res Function(_$NewArcadeMachineEntityImpl) then) =
      __$$NewArcadeMachineEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int arcadeLocationId,
      GameTitleVersionEntity? game,
      int? machineCount,
      int? price,
      String? notes});

  @override
  $GameTitleVersionEntityCopyWith<$Res>? get game;
}

/// @nodoc
class __$$NewArcadeMachineEntityImplCopyWithImpl<$Res>
    extends _$NewArcadeMachineEntityCopyWithImpl<$Res,
        _$NewArcadeMachineEntityImpl>
    implements _$$NewArcadeMachineEntityImplCopyWith<$Res> {
  __$$NewArcadeMachineEntityImplCopyWithImpl(
      _$NewArcadeMachineEntityImpl _value,
      $Res Function(_$NewArcadeMachineEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arcadeLocationId = null,
    Object? game = freezed,
    Object? machineCount = freezed,
    Object? price = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$NewArcadeMachineEntityImpl(
      arcadeLocationId: null == arcadeLocationId
          ? _value.arcadeLocationId
          : arcadeLocationId // ignore: cast_nullable_to_non_nullable
              as int,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameTitleVersionEntity?,
      machineCount: freezed == machineCount
          ? _value.machineCount
          : machineCount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewArcadeMachineEntityImpl implements _NewArcadeMachineEntity {
  _$NewArcadeMachineEntityImpl(
      {required this.arcadeLocationId,
      this.game,
      this.machineCount,
      this.price,
      this.notes});

  @override
  final int arcadeLocationId;
  @override
  final GameTitleVersionEntity? game;
  @override
  final int? machineCount;
  @override
  final int? price;
  @override
  final String? notes;

  @override
  String toString() {
    return 'NewArcadeMachineEntity(arcadeLocationId: $arcadeLocationId, game: $game, machineCount: $machineCount, price: $price, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewArcadeMachineEntityImpl &&
            (identical(other.arcadeLocationId, arcadeLocationId) ||
                other.arcadeLocationId == arcadeLocationId) &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.machineCount, machineCount) ||
                other.machineCount == machineCount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, arcadeLocationId, game, machineCount, price, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewArcadeMachineEntityImplCopyWith<_$NewArcadeMachineEntityImpl>
      get copyWith => __$$NewArcadeMachineEntityImplCopyWithImpl<
          _$NewArcadeMachineEntityImpl>(this, _$identity);
}

abstract class _NewArcadeMachineEntity implements NewArcadeMachineEntity {
  factory _NewArcadeMachineEntity(
      {required final int arcadeLocationId,
      final GameTitleVersionEntity? game,
      final int? machineCount,
      final int? price,
      final String? notes}) = _$NewArcadeMachineEntityImpl;

  @override
  int get arcadeLocationId;
  @override
  GameTitleVersionEntity? get game;
  @override
  int? get machineCount;
  @override
  int? get price;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$NewArcadeMachineEntityImplCopyWith<_$NewArcadeMachineEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
