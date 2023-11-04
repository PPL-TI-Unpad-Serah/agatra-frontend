import 'dart:convert';

import 'package:agatra/features/data/models/arcade_center.dart';
import 'package:agatra/features/data/models/city.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:flutter/services.dart';
import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/models/game_title.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/features/domain/repository/search_arcade_locations_repository.dart';

class MockSearchArcadeLocationsRepository
    extends SearchArcadeLocationsRepository {
  @override
  Future<DataState<List<GameTitleEntity>>> getGameTitles() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString = await _loadAsset('assets/game_titles.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    List<GameTitleEntity> items = [];
    for (Map<String, dynamic> item in json["game_titles"]) {
      items.add(GameTitleModel.fromJson(item).toEntity());
    }

    return DataSuccess(items);
  }

  @override
  Future<DataState<List<GameTitleVersionEntity>>> getGameTitleVersionsOf(
    GameTitleEntity gameTitle,
  ) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    GameTitleCompactEntity compactedTitle = GameTitleCompactEntity(id: gameTitle.id, name: gameTitle.name); 
    List<GameTitleVersionEntity> items = gameTitle.versions.map((e) => GameTitleVersionEntity(
      id: e.id,
      name: e.name,
      info: e.info,
      title: compactedTitle,
    )).toList();

    return DataSuccess(items);
  }

  @override
  Future<DataState<List<ArcadeCenterEntity>>> getArcadeCenters() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString = await _loadAsset('assets/arcade_centers.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    List<ArcadeCenterEntity> items = [];
    for (Map<String, dynamic> item in json["arcade_centers"]) {
      items.add(ArcadeCenterModel.fromJson(item).toEntity());
    }

    return DataSuccess(items);
  }

  @override
  Future<DataState<List<CityEntity>>> getCities() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString = await _loadAsset('assets/cities.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    List<CityEntity> items = [];
    for (Map<String, dynamic> item in json["cities"]) {
      items.add(CityModel.fromJson(item).toEntity());
    }

    return DataSuccess(items);
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
