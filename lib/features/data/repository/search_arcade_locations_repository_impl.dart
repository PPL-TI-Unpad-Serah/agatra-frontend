import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/sources/remote/api_service.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/features/domain/repository/search_arcade_locations_repository.dart';

class SearchArcadeLocationsRepositoryImpl extends SearchArcadeLocationsRepository {
  final ApiService apiService;

  SearchArcadeLocationsRepositoryImpl({
    required this.apiService
  });

  @override
  Future<DataState<List<GameTitleEntity>>> getGameTitles() async {
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<GameTitleVersionEntity>>> getGameTitleVersionsOf(GameTitleEntity gameTitle) async {
    throw UnimplementedError();
  }
  @override
  Future<DataState<List<ArcadeCenterEntity>>> getArcadeCenters() async {
    throw UnimplementedError();
  }
  
  @override
  Future<DataState<List<CityEntity>>> getCities() async {
    throw UnimplementedError();
  }
  
}