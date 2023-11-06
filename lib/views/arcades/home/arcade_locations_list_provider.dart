import 'package:agatra/core/resources/data_state.dart';
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
    @Default(false) bool isLoadMoreError,
    @Default(false) bool isLoadMoreDone,
  }) = _ArcadeLocationsList;
}

@riverpod
class ArcadeLocationsListState extends _$ArcadeLocationsListState {
  @override
  FutureOr<ArcadeLocationsList> build(SearchQuery searchQuery) async {
    final searchRepository = ref.read(searchArcadeLocationsRepositoryProvider);
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
    state = const AsyncValue.loading();

    final searchRepository = ref.read(searchArcadeLocationsRepositoryProvider);

    state = await AsyncValue.guard(() async {
      final posts = await searchRepository.getArcadeLocations(
        page: state.value!.page + 1,
        query: state.value!.searchQuery,
      );

      if (posts is DataFailure) {
        return state.value!.copyWith(
          isLoadMoreError: true,
        );
      }

      if (posts.data!.isEmpty) {
        return state.value!.copyWith(
          isLoadMoreDone: true,
        );
      }

      return 
        state.value!.copyWith(
          page: state.value!.page + 1,
          posts: [...state.value!.posts, ...posts.data!],
        );
    });

  }
}
