import 'dart:convert';

import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/models/game_title.dart';
import 'package:agatra/features/data/models/game_title_compact.dart';
import 'package:agatra/features/domain/entities/form/new_game_title_version.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version_compact.dart';
import 'package:agatra/features/domain/repository/games_repository.dart';
import 'package:flutter/services.dart';

class MockGamesRepository implements GamesRepository {
  @override
  Future<DataState> createGameTitle(NewGameTitleVersionEntity body) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return const DataSuccess(null);
  }

  @override
  Future<DataState> createGameTitleVersion(NewGameTitleVersionEntity body) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return const DataSuccess(null);
  }

  @override
  Future<DataState<GameTitleCompactEntity>> getGameTitle(int id) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString = await _loadAsset('assets/game_titles.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    for (Map<String, dynamic> item in json["game_titles"]) {
      final convertedItem = GameTitleCompactModel.fromJson(item).toEntity();
      if (convertedItem.id == id) {
        return DataSuccess(convertedItem);
      }
    }

    throw UnimplementedError();
  }

  @override
  Future<DataState<GameTitleVersionCompactEntity>> getGameTitleVersion(int id) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString = await _loadAsset('assets/game_titles.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    for (Map<String, dynamic> item in json["game_titles"]) {
      final convertedParent = GameTitleModel.fromJson(item).toEntity();
      for (final version in convertedParent.versions) {
        if (version.id == id) {
          return DataSuccess(version);
        }
      }
    }

    throw UnimplementedError();  }

  @override
  Future<DataState<List<GameTitleCompactEntity>>> getGameTitlesCompact() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString = await _loadAsset('assets/game_titles.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    List<GameTitleCompactEntity> items = [];
    for (Map<String, dynamic> item in json["game_titles"]) {
      items.add(GameTitleCompactModel.fromJson(item).toEntity());
    }

    return DataSuccess(items);
  }

  @override
  Future<DataState> updateGameTitle(GameTitleCompactEntity body) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return const DataSuccess(null);
  }

  @override
  Future<DataState> updateGameTitleVersion(GameTitleVersionCompactEntity body) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    
    return const DataSuccess(null);
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}