// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arcade_locations_list_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArcadeLocationsList {
  int get page => throw _privateConstructorUsedError;
  List<ArcadeLocationCompactEntity> get posts =>
      throw _privateConstructorUsedError;
  AppliedSearchQuery get searchQuery => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get noMorePostsToFetch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArcadeLocationsListCopyWith<ArcadeLocationsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArcadeLocationsListCopyWith<$Res> {
  factory $ArcadeLocationsListCopyWith(
          ArcadeLocationsList value, $Res Function(ArcadeLocationsList) then) =
      _$ArcadeLocationsListCopyWithImpl<$Res, ArcadeLocationsList>;
  @useResult
  $Res call(
      {int page,
      List<ArcadeLocationCompactEntity> posts,
      AppliedSearchQuery searchQuery,
      bool isLoadingMore,
      bool noMorePostsToFetch});

  $AppliedSearchQueryCopyWith<$Res> get searchQuery;
}

/// @nodoc
class _$ArcadeLocationsListCopyWithImpl<$Res, $Val extends ArcadeLocationsList>
    implements $ArcadeLocationsListCopyWith<$Res> {
  _$ArcadeLocationsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? posts = null,
    Object? searchQuery = null,
    Object? isLoadingMore = null,
    Object? noMorePostsToFetch = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<ArcadeLocationCompactEntity>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as AppliedSearchQuery,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      noMorePostsToFetch: null == noMorePostsToFetch
          ? _value.noMorePostsToFetch
          : noMorePostsToFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppliedSearchQueryCopyWith<$Res> get searchQuery {
    return $AppliedSearchQueryCopyWith<$Res>(_value.searchQuery, (value) {
      return _then(_value.copyWith(searchQuery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArcadeLocationsListImplCopyWith<$Res>
    implements $ArcadeLocationsListCopyWith<$Res> {
  factory _$$ArcadeLocationsListImplCopyWith(_$ArcadeLocationsListImpl value,
          $Res Function(_$ArcadeLocationsListImpl) then) =
      __$$ArcadeLocationsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<ArcadeLocationCompactEntity> posts,
      AppliedSearchQuery searchQuery,
      bool isLoadingMore,
      bool noMorePostsToFetch});

  @override
  $AppliedSearchQueryCopyWith<$Res> get searchQuery;
}

/// @nodoc
class __$$ArcadeLocationsListImplCopyWithImpl<$Res>
    extends _$ArcadeLocationsListCopyWithImpl<$Res, _$ArcadeLocationsListImpl>
    implements _$$ArcadeLocationsListImplCopyWith<$Res> {
  __$$ArcadeLocationsListImplCopyWithImpl(_$ArcadeLocationsListImpl _value,
      $Res Function(_$ArcadeLocationsListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? posts = null,
    Object? searchQuery = null,
    Object? isLoadingMore = null,
    Object? noMorePostsToFetch = null,
  }) {
    return _then(_$ArcadeLocationsListImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<ArcadeLocationCompactEntity>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as AppliedSearchQuery,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      noMorePostsToFetch: null == noMorePostsToFetch
          ? _value.noMorePostsToFetch
          : noMorePostsToFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ArcadeLocationsListImpl implements _ArcadeLocationsList {
  const _$ArcadeLocationsListImpl(
      {this.page = 1,
      required final List<ArcadeLocationCompactEntity> posts,
      required this.searchQuery,
      this.isLoadingMore = false,
      this.noMorePostsToFetch = false})
      : _posts = posts;

  @override
  @JsonKey()
  final int page;
  final List<ArcadeLocationCompactEntity> _posts;
  @override
  List<ArcadeLocationCompactEntity> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final AppliedSearchQuery searchQuery;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool noMorePostsToFetch;

  @override
  String toString() {
    return 'ArcadeLocationsList(page: $page, posts: $posts, searchQuery: $searchQuery, isLoadingMore: $isLoadingMore, noMorePostsToFetch: $noMorePostsToFetch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArcadeLocationsListImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.noMorePostsToFetch, noMorePostsToFetch) ||
                other.noMorePostsToFetch == noMorePostsToFetch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_posts),
      searchQuery,
      isLoadingMore,
      noMorePostsToFetch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArcadeLocationsListImplCopyWith<_$ArcadeLocationsListImpl> get copyWith =>
      __$$ArcadeLocationsListImplCopyWithImpl<_$ArcadeLocationsListImpl>(
          this, _$identity);
}

abstract class _ArcadeLocationsList implements ArcadeLocationsList {
  const factory _ArcadeLocationsList(
      {final int page,
      required final List<ArcadeLocationCompactEntity> posts,
      required final AppliedSearchQuery searchQuery,
      final bool isLoadingMore,
      final bool noMorePostsToFetch}) = _$ArcadeLocationsListImpl;

  @override
  int get page;
  @override
  List<ArcadeLocationCompactEntity> get posts;
  @override
  AppliedSearchQuery get searchQuery;
  @override
  bool get isLoadingMore;
  @override
  bool get noMorePostsToFetch;
  @override
  @JsonKey(ignore: true)
  _$$ArcadeLocationsListImplCopyWith<_$ArcadeLocationsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
