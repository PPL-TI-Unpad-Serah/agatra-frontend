import 'package:agatra/features/domain/entities/arcade_location_compact.dart';
import 'package:agatra/providers.dart';
import 'package:agatra/views/arcades/home/applied_search_query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'arcade_locations_list_provider.freezed.dart';
part 'arcade_locations_list_provider.g.dart';

@freezed
abstract class ArcadeLocationsList with _$ArcadeLocationsList {
  const factory ArcadeLocationsList({
    @Default(1) int page,
    required List<ArcadeLocationCompactEntity> posts,
    required AppliedSearchQuery searchQuery,
    @Default(false) bool isLoadingMore,
    @Default(false) bool noMorePostsToFetch,
  }) = _ArcadeLocationsList;
}

@riverpod
class ArcadeLocationsListState extends _$ArcadeLocationsListState {
  @override
  FutureOr<ArcadeLocationsList> build() async {
    final searchRepository = ref.watch(searchArcadeLocationsRepositoryProvider);
    final searchQuery = AppliedSearchQuery();

    final posts = await searchRepository.getArcadeLocations(
      page: 1,
      query: searchQuery,
    );

    return ArcadeLocationsList(
      posts: posts.data!,
      searchQuery: searchQuery,
      noMorePostsToFetch: posts.data!.length < 10,
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
        noMorePostsToFetch: posts.data!.length < 10,
        page: state.value!.page + 1,
        posts: [...state.value!.posts, ...posts.data!],
      );
    });
  }

  Future<void> applySearchQuery(AppliedSearchQuery searchQuery) async {
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
        noMorePostsToFetch: posts.data!.length < 10,
        posts: posts.data!,
      );
    });
  }
}
