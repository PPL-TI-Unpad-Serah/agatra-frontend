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
mixin _$MaintainerMachineEdit {
  int get originalItemHash => throw _privateConstructorUsedError;
  List<GameTitleVersionEntity> get versions =>
      throw _privateConstructorUsedError;
  ArcadeMachineEntity get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaintainerMachineEditCopyWith<MaintainerMachineEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintainerMachineEditCopyWith<$Res> {
  factory $MaintainerMachineEditCopyWith(MaintainerMachineEdit value,
          $Res Function(MaintainerMachineEdit) then) =
      _$MaintainerMachineEditCopyWithImpl<$Res, MaintainerMachineEdit>;
  @useResult
  $Res call(
      {int originalItemHash,
      List<GameTitleVersionEntity> versions,
      ArcadeMachineEntity item});

  $ArcadeMachineEntityCopyWith<$Res> get item;
}

/// @nodoc
class _$MaintainerMachineEditCopyWithImpl<$Res,
        $Val extends MaintainerMachineEdit>
    implements $MaintainerMachineEditCopyWith<$Res> {
  _$MaintainerMachineEditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalItemHash = null,
    Object? versions = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      originalItemHash: null == originalItemHash
          ? _value.originalItemHash
          : originalItemHash // ignore: cast_nullable_to_non_nullable
              as int,
      versions: null == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<GameTitleVersionEntity>,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ArcadeMachineEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArcadeMachineEntityCopyWith<$Res> get item {
    return $ArcadeMachineEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MaintainerMachineEditImplCopyWith<$Res>
    implements $MaintainerMachineEditCopyWith<$Res> {
  factory _$$MaintainerMachineEditImplCopyWith(
          _$MaintainerMachineEditImpl value,
          $Res Function(_$MaintainerMachineEditImpl) then) =
      __$$MaintainerMachineEditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int originalItemHash,
      List<GameTitleVersionEntity> versions,
      ArcadeMachineEntity item});

  @override
  $ArcadeMachineEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$MaintainerMachineEditImplCopyWithImpl<$Res>
    extends _$MaintainerMachineEditCopyWithImpl<$Res,
        _$MaintainerMachineEditImpl>
    implements _$$MaintainerMachineEditImplCopyWith<$Res> {
  __$$MaintainerMachineEditImplCopyWithImpl(_$MaintainerMachineEditImpl _value,
      $Res Function(_$MaintainerMachineEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalItemHash = null,
    Object? versions = null,
    Object? item = null,
  }) {
    return _then(_$MaintainerMachineEditImpl(
      originalItemHash: null == originalItemHash
          ? _value.originalItemHash
          : originalItemHash // ignore: cast_nullable_to_non_nullable
              as int,
      versions: null == versions
          ? _value._versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<GameTitleVersionEntity>,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ArcadeMachineEntity,
    ));
  }
}

/// @nodoc

class _$MaintainerMachineEditImpl implements _MaintainerMachineEdit {
  _$MaintainerMachineEditImpl(
      {required this.originalItemHash,
      required final List<GameTitleVersionEntity> versions,
      required this.item})
      : _versions = versions;

  @override
  final int originalItemHash;
  final List<GameTitleVersionEntity> _versions;
  @override
  List<GameTitleVersionEntity> get versions {
    if (_versions is EqualUnmodifiableListView) return _versions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versions);
  }

  @override
  final ArcadeMachineEntity item;

  @override
  String toString() {
    return 'MaintainerMachineEdit(originalItemHash: $originalItemHash, versions: $versions, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintainerMachineEditImpl &&
            (identical(other.originalItemHash, originalItemHash) ||
                other.originalItemHash == originalItemHash) &&
            const DeepCollectionEquality().equals(other._versions, _versions) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, originalItemHash,
      const DeepCollectionEquality().hash(_versions), item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintainerMachineEditImplCopyWith<_$MaintainerMachineEditImpl>
      get copyWith => __$$MaintainerMachineEditImplCopyWithImpl<
          _$MaintainerMachineEditImpl>(this, _$identity);
}

abstract class _MaintainerMachineEdit implements MaintainerMachineEdit {
  factory _MaintainerMachineEdit(
      {required final int originalItemHash,
      required final List<GameTitleVersionEntity> versions,
      required final ArcadeMachineEntity item}) = _$MaintainerMachineEditImpl;

  @override
  int get originalItemHash;
  @override
  List<GameTitleVersionEntity> get versions;
  @override
  ArcadeMachineEntity get item;
  @override
  @JsonKey(ignore: true)
  _$$MaintainerMachineEditImplCopyWith<_$MaintainerMachineEditImpl>
      get copyWith => throw _privateConstructorUsedError;
}
