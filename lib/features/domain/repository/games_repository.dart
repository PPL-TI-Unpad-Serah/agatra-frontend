import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/form/new_game_title.dart';
import 'package:agatra/features/domain/entities/form/new_game_title_version.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';

abstract class GamesRepository {
  Future<DataState<List<GameTitleCompactEntity>>> getGameTitlesCompact();
  Future<DataState<GameTitleCompactEntity>> getGameTitle(int id);
  Future<DataState> createGameTitle(NewGameTitleEntity body);
  Future<DataState> updateGameTitle(GameTitleCompactEntity body);

  Future<DataState<GameTitleVersionEntity>> getGameTitleVersion(int id);
  Future<DataState> createGameTitleVersion(NewGameTitleVersionEntity body);
  Future<DataState> updateGameTitleVersion(GameTitleVersionEntity body);
}