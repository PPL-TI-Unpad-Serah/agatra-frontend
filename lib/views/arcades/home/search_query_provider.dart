import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_query_provider.g.dart';
part 'search_query_provider.freezed.dart';

@freezed
class SearchQuery with _$SearchQuery {
  factory SearchQuery({
    CityEntity? city,
    GameTitleEntity? gameTitle,
    GameTitleVersionEntity? gameTitleVersion,
    ArcadeCenterEntity? arcadeCenter,
    required bool sortByNearest,
  }) = _SearchQuery;
}

@riverpod
class SearchQueryState extends _$SearchQueryState {
  @override
  SearchQuery build() {
    return SearchQuery(
      sortByNearest: false
    );
  }

  void setCity(CityEntity city) {
    state = state.copyWith(city: city);
  }

  void setGameTitle(GameTitleEntity gameTitle) {
    state = state.copyWith(
      gameTitle: gameTitle,
      gameTitleVersion: null,
    );
  }

  void setGameTitleVersion(GameTitleVersionEntity gameTitleVersion) {
    state = state.copyWith(gameTitleVersion: gameTitleVersion);
  }

  void setArcadeCenter(ArcadeCenterEntity arcadeCenter) {
    state = state.copyWith(arcadeCenter: arcadeCenter);
  }

  void setSortByNearest(bool sortByNearest) {
    state = state.copyWith(sortByNearest: sortByNearest);
  }

  void reset() {
    state = SearchQuery(
      sortByNearest: false
    );
  }
}
