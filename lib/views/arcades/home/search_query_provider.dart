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
  }) = _SearchQuery;
}

@riverpod
class SearchQueryState extends _$SearchQueryState {
  @override
  SearchQuery build() {
    return SearchQuery();
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

  bool canPickGameTitleVersion() {
    return state.gameTitle != null;
  }

  void setGameTitleVersion(GameTitleVersionEntity gameTitleVersion) {
    state = state.copyWith(gameTitleVersion: gameTitleVersion);
  }

  void reset() {
    state = SearchQuery();
  }
}
