import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';

abstract class SearchArcadeLocationsRepository {
  Future<List<GameTitleEntity>> getGameTitles();
  Future<List<GameTitleVersionEntity>> getGameTitleVersionsOf(GameTitleEntity gameTitle);
  Future<List<ArcadeCenterEntity>> getArcadeCenters();
  Future<List<CityEntity>> getCities();
}