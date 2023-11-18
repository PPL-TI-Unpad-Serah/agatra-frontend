import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/form/new_game_title_version.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version_compact.dart';

abstract class GamesRepository {
  Future<DataState<List<GameTitleCompactEntity>>> getGameTitlesCompact();
  Future<DataState<GameTitleCompactEntity>> getGameTitle(int id);
  Future<DataState> createGameTitle(NewGameTitleVersionEntity body);
  Future<DataState> updateGameTitle(GameTitleCompactEntity body);

  Future<DataState<GameTitleVersionCompactEntity>> getGameTitleVersion(int id);
  Future<DataState> createGameTitleVersion(NewGameTitleVersionEntity body);
  Future<DataState> updateGameTitleVersion(GameTitleVersionCompactEntity body);
}