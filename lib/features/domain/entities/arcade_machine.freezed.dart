// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arcade_machine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArcadeMachineEntity {
  int get id => throw _privateConstructorUsedError;
  GameTitleVersionEntity get game => throw _privateConstructorUsedError;
  int get machineCount => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArcadeMachineEntityCopyWith<ArcadeMachineEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArcadeMachineEntityCopyWith<$Res> {
  factory $ArcadeMachineEntityCopyWith(
          ArcadeMachineEntity value, $Res Function(ArcadeMachineEntity) then) =
      _$ArcadeMachineEntityCopyWithImpl<$Res, ArcadeMachineEntity>;
  @useResult
  $Res call(
      {int id,
      GameTitleVersionEntity game,
      int machineCount,
      int price,
      String notes});

  $GameTitleVersionEntityCopyWith<$Res> get game;
}

/// @nodoc
class _$ArcadeMachineEntityCopyWithImpl<$Res, $Val extends ArcadeMachineEntity>
    implements $ArcadeMachineEntityCopyWith<$Res> {
  _$ArcadeMachineEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? game = null,
    Object? machineCount = null,
    Object? price = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameTitleVersionEntity,
      machineCount: null == machineCount
          ? _value.machineCount
          : machineCount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameTitleVersionEntityCopyWith<$Res> get game {
    return $GameTitleVersionEntityCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArcadeMachineEntityImplCopyWith<$Res>
    implements $ArcadeMachineEntityCopyWith<$Res> {
  factory _$$ArcadeMachineEntityImplCopyWith(_$ArcadeMachineEntityImpl value,
          $Res Function(_$ArcadeMachineEntityImpl) then) =
      __$$ArcadeMachineEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      GameTitleVersionEntity game,
      int machineCount,
      int price,
      String notes});

  @override
  $GameTitleVersionEntityCopyWith<$Res> get game;
}

/// @nodoc
class __$$ArcadeMachineEntityImplCopyWithImpl<$Res>
    extends _$ArcadeMachineEntityCopyWithImpl<$Res, _$ArcadeMachineEntityImpl>
    implements _$$ArcadeMachineEntityImplCopyWith<$Res> {
  __$$ArcadeMachineEntityImplCopyWithImpl(_$ArcadeMachineEntityImpl _value,
      $Res Function(_$ArcadeMachineEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? game = null,
    Object? machineCount = null,
    Object? price = null,
    Object? notes = null,
  }) {
    return _then(_$ArcadeMachineEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameTitleVersionEntity,
      machineCount: null == machineCount
          ? _value.machineCount
          : machineCount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArcadeMachineEntityImpl implements _ArcadeMachineEntity {
  _$ArcadeMachineEntityImpl(
      {required this.id,
      required this.game,
      required this.machineCount,
      required this.price,
      required this.notes});

  @override
  final int id;
  @override
  final GameTitleVersionEntity game;
  @override
  final int machineCount;
  @override
  final int price;
  @override
  final String notes;

  @override
  String toString() {
    return 'ArcadeMachineEntity(id: $id, game: $game, machineCount: $machineCount, price: $price, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArcadeMachineEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.machineCount, machineCount) ||
                other.machineCount == machineCount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, game, machineCount, price, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArcadeMachineEntityImplCopyWith<_$ArcadeMachineEntityImpl> get copyWith =>
      __$$ArcadeMachineEntityImplCopyWithImpl<_$ArcadeMachineEntityImpl>(
          this, _$identity);
}

abstract class _ArcadeMachineEntity implements ArcadeMachineEntity {
  factory _ArcadeMachineEntity(
      {required final int id,
      required final GameTitleVersionEntity game,
      required final int machineCount,
      required final int price,
      required final String notes}) = _$ArcadeMachineEntityImpl;

  @override
  int get id;
  @override
  GameTitleVersionEntity get game;
  @override
  int get machineCount;
  @override
  int get price;
  @override
  String get notes;
  @override
  @JsonKey(ignore: true)
  _$$ArcadeMachineEntityImplCopyWith<_$ArcadeMachineEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
