import 'dart:convert';

import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/models/arcade_center.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_center.dart';
import 'package:agatra/features/domain/repository/arcade_centers_repository.dart';
import 'package:flutter/services.dart';

class MockArcadeCentersRepository extends ArcadeCentersRepository {
  @override
  Future<DataState> createArcadeCenter(NewArcadeCenterEntity body) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return const DataSuccess(null);
  }

  @override
  Future<DataState> updateArcadeCenter(ArcadeCenterEntity body) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return const DataSuccess(null);
  }

  @override
  Future<DataState<ArcadeCenterEntity>> getArcadeCenter(int id) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString = await _loadAsset('assets/arcade_centers.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    for (Map<String, dynamic> item in json["arcade_centers"]) {
      final convertedItem = ArcadeCenterModel.fromJson(item).toEntity();
      if (convertedItem.id == id) {
        return DataSuccess(convertedItem);
      }
    }

    throw UnimplementedError();
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}