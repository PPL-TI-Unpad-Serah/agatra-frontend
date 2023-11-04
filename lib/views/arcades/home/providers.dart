import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Future<List<CityEntity>> getCities(GetCitiesRef ref) async {
  final searchArcadeLocationRepository = ref.watch(searchArcadeLocationsRepositoryProvider); 

  final result = await searchArcadeLocationRepository.getCities();

  if (result is DataFailure) {
    return Future.error(result.error!);
  } else {
    return Future.value(result.data!);
  }
}

@riverpod
Future<List<GameTitleEntity>> getGameTitles(GetGameTitlesRef ref) async {
  final searchArcadeLocationRepository = ref.watch(searchArcadeLocationsRepositoryProvider); 

  final result = await searchArcadeLocationRepository.getGameTitles();

  if (result is DataFailure) {
    return Future.error(result.error!);
  } else {
    return Future.value(result.data!);
  }
}

@riverpod
Future<List<GameTitleVersionEntity>> getGameTitleVersionsOf(GetGameTitleVersionsOfRef ref, GameTitleEntity gameTitle) async {
  final searchArcadeLocationRepository = ref.watch(searchArcadeLocationsRepositoryProvider); 
  
  final result = await searchArcadeLocationRepository.getGameTitleVersionsOf(gameTitle);

  if (result is DataFailure) {
    return Future.error(result.error!);
  } else {
    return Future.value(result.data!);
  }
}

@riverpod
Future<List<ArcadeCenterEntity>> getArcadeCenters(GetArcadeCentersRef ref) async {
  final searchArcadeLocationRepository = ref.watch(searchArcadeLocationsRepositoryProvider); 
  
  final result = await searchArcadeLocationRepository.getArcadeCenters();

  if (result is DataFailure) {
    return Future.error(result.error!);
  } else {
    return Future.value(result.data!);
  }
}