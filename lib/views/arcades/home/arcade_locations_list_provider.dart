import 'package:agatra/features/domain/entities/arcade_location_compact.dart';
import 'package:agatra/providers.dart';
import 'package:agatra/views/arcades/home/search_query_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'arcade_locations_list_provider.freezed.dart';
part 'arcade_locations_list_provider.g.dart';

@freezed
abstract class ArcadeLocationsList with _$ArcadeLocationsList {
  const factory ArcadeLocationsList({
    @Default(1) int page,
    required List<ArcadeLocationCompactEntity> posts,
    required SearchQuery searchQuery,
    @Default(false) bool isLoadingMore,
    @Default(false) bool noMorePostsToFetch,
  }) = _ArcadeLocationsList;
}

@riverpod
class ArcadeLocationsListState extends _$ArcadeLocationsListState {
  @override
  FutureOr<ArcadeLocationsList> build() async {
    final searchRepository = ref.watch(searchArcadeLocationsRepositoryProvider);
    final searchQuery = SearchQuery(sortByNearest: false);

    final posts = await searchRepository.getArcadeLocations(
      page: 1,
      query: searchQuery,
    );

    return ArcadeLocationsList(
      posts: posts.data!,
      searchQuery: searchQuery,
    );
  }

  Future<void> loadMoreEntries() async {
    if (state.value!.isLoadingMore) {
      return;
    }

    state = AsyncData(state.value!.copyWith(
      isLoadingMore: true,
    ));

    final searchRepository = ref.watch(searchArcadeLocationsRepositoryProvider);

    state = await AsyncValue.guard(() async {
      final posts = await searchRepository.getArcadeLocations(
        page: state.value!.page + 1,
        query: state.value!.searchQuery,
      );

      if (posts.data!.isEmpty) {
        return state.value!.copyWith(
          isLoadingMore: false,
          noMorePostsToFetch: true,
        );
      }

      return state.value!.copyWith(
        isLoadingMore: false,
        page: state.value!.page + 1,
        posts: [...state.value!.posts, ...posts.data!],
      );
    });
  }

  Future<void> setSearchQuery(SearchQuery searchQuery) async {
    state = const AsyncValue.loading();

    final searchRepository = ref.watch(searchArcadeLocationsRepositoryProvider);
    state = await AsyncValue.guard(() async {
      final posts = await searchRepository.getArcadeLocations(
        page: 1,
        query: searchQuery,
      );

      return state.value!.copyWith(
        page: 1,
        posts: posts.data!,
        searchQuery: searchQuery,
      );
    });
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();

    final searchRepository = ref.watch(searchArcadeLocationsRepositoryProvider);
    state = await AsyncValue.guard(() async {
      final posts = await searchRepository.getArcadeLocations(
        page: 1,
        query: state.value!.searchQuery,
      );

      return state.value!.copyWith(
        page: 1,
        posts: posts.data!,
      );
    });
  }
}
