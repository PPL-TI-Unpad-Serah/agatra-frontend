// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_query_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchQuery {
  CityEntity? get city => throw _privateConstructorUsedError;
  GameTitleEntity? get gameTitle => throw _privateConstructorUsedError;
  GameTitleVersionEntity? get gameTitleVersion =>
      throw _privateConstructorUsedError;
  ArcadeCenterEntity? get arcadeCenter => throw _privateConstructorUsedError;
  bool get sortByNearest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchQueryCopyWith<SearchQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQueryCopyWith<$Res> {
  factory $SearchQueryCopyWith(
          SearchQuery value, $Res Function(SearchQuery) then) =
      _$SearchQueryCopyWithImpl<$Res, SearchQuery>;
  @useResult
  $Res call(
      {CityEntity? city,
      GameTitleEntity? gameTitle,
      GameTitleVersionEntity? gameTitleVersion,
      ArcadeCenterEntity? arcadeCenter,
      bool sortByNearest});

  $ArcadeCenterEntityCopyWith<$Res>? get arcadeCenter;
}

/// @nodoc
class _$SearchQueryCopyWithImpl<$Res, $Val extends SearchQuery>
    implements $SearchQueryCopyWith<$Res> {
  _$SearchQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? gameTitle = freezed,
    Object? gameTitleVersion = freezed,
    Object? arcadeCenter = freezed,
    Object? sortByNearest = null,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity?,
      gameTitle: freezed == gameTitle
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as GameTitleEntity?,
      gameTitleVersion: freezed == gameTitleVersion
          ? _value.gameTitleVersion
          : gameTitleVersion // ignore: cast_nullable_to_non_nullable
              as GameTitleVersionEntity?,
      arcadeCenter: freezed == arcadeCenter
          ? _value.arcadeCenter
          : arcadeCenter // ignore: cast_nullable_to_non_nullable
              as ArcadeCenterEntity?,
      sortByNearest: null == sortByNearest
          ? _value.sortByNearest
          : sortByNearest // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArcadeCenterEntityCopyWith<$Res>? get arcadeCenter {
    if (_value.arcadeCenter == null) {
      return null;
    }

    return $ArcadeCenterEntityCopyWith<$Res>(_value.arcadeCenter!, (value) {
      return _then(_value.copyWith(arcadeCenter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchQueryImplCopyWith<$Res>
    implements $SearchQueryCopyWith<$Res> {
  factory _$$SearchQueryImplCopyWith(
          _$SearchQueryImpl value, $Res Function(_$SearchQueryImpl) then) =
      __$$SearchQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CityEntity? city,
      GameTitleEntity? gameTitle,
      GameTitleVersionEntity? gameTitleVersion,
      ArcadeCenterEntity? arcadeCenter,
      bool sortByNearest});

  @override
  $ArcadeCenterEntityCopyWith<$Res>? get arcadeCenter;
}

/// @nodoc
class __$$SearchQueryImplCopyWithImpl<$Res>
    extends _$SearchQueryCopyWithImpl<$Res, _$SearchQueryImpl>
    implements _$$SearchQueryImplCopyWith<$Res> {
  __$$SearchQueryImplCopyWithImpl(
      _$SearchQueryImpl _value, $Res Function(_$SearchQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? gameTitle = freezed,
    Object? gameTitleVersion = freezed,
    Object? arcadeCenter = freezed,
    Object? sortByNearest = null,
  }) {
    return _then(_$SearchQueryImpl(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity?,
      gameTitle: freezed == gameTitle
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as GameTitleEntity?,
      gameTitleVersion: freezed == gameTitleVersion
          ? _value.gameTitleVersion
          : gameTitleVersion // ignore: cast_nullable_to_non_nullable
              as GameTitleVersionEntity?,
      arcadeCenter: freezed == arcadeCenter
          ? _value.arcadeCenter
          : arcadeCenter // ignore: cast_nullable_to_non_nullable
              as ArcadeCenterEntity?,
      sortByNearest: null == sortByNearest
          ? _value.sortByNearest
          : sortByNearest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchQueryImpl implements _SearchQuery {
  _$SearchQueryImpl(
      {this.city,
      this.gameTitle,
      this.gameTitleVersion,
      this.arcadeCenter,
      required this.sortByNearest});

  @override
  final CityEntity? city;
  @override
  final GameTitleEntity? gameTitle;
  @override
  final GameTitleVersionEntity? gameTitleVersion;
  @override
  final ArcadeCenterEntity? arcadeCenter;
  @override
  final bool sortByNearest;

  @override
  String toString() {
    return 'SearchQuery(city: $city, gameTitle: $gameTitle, gameTitleVersion: $gameTitleVersion, arcadeCenter: $arcadeCenter, sortByNearest: $sortByNearest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.gameTitle, gameTitle) ||
                other.gameTitle == gameTitle) &&
            (identical(other.gameTitleVersion, gameTitleVersion) ||
                other.gameTitleVersion == gameTitleVersion) &&
            (identical(other.arcadeCenter, arcadeCenter) ||
                other.arcadeCenter == arcadeCenter) &&
            (identical(other.sortByNearest, sortByNearest) ||
                other.sortByNearest == sortByNearest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city, gameTitle,
      gameTitleVersion, arcadeCenter, sortByNearest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      __$$SearchQueryImplCopyWithImpl<_$SearchQueryImpl>(this, _$identity);
}

abstract class _SearchQuery implements SearchQuery {
  factory _SearchQuery(
      {final CityEntity? city,
      final GameTitleEntity? gameTitle,
      final GameTitleVersionEntity? gameTitleVersion,
      final ArcadeCenterEntity? arcadeCenter,
      required final bool sortByNearest}) = _$SearchQueryImpl;

  @override
  CityEntity? get city;
  @override
  GameTitleEntity? get gameTitle;
  @override
  GameTitleVersionEntity? get gameTitleVersion;
  @override
  ArcadeCenterEntity? get arcadeCenter;
  @override
  bool get sortByNearest;
  @override
  @JsonKey(ignore: true)
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
