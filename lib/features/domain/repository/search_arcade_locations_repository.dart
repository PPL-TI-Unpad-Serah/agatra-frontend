import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';

abstract class SearchArcadeLocationsRepository {
  Future<DataState<List<GameTitleEntity>>> getGameTitles();
  Future<DataState<List<GameTitleVersionEntity>>> getGameTitleVersionsOf(GameTitleEntity gameTitle);
  Future<DataState<List<ArcadeCenterEntity>>> getArcadeCenters();
  Future<DataState<List<CityEntity>>> getCities();
}