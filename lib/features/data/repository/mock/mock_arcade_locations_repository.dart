import 'dart:convert';

import 'package:agatra/core/resources/data_state.dart';
import 'package:agatra/features/data/data_mapper.dart';
import 'package:agatra/features/data/models/arcade_location.dart';
import 'package:agatra/features/domain/entities/arcade_location.dart';
import 'package:agatra/features/domain/entities/arcade_machine.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_location.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_machine.dart';
import 'package:agatra/features/domain/repository/arcade_locations_repository.dart';
import 'package:flutter/services.dart';

class MockArcadeLocationsRepository extends ArcadeLocationsRepository {
  @override
  Future<DataState<ArcadeMachineEntity>> getArcadeMachine(int id) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString = await _loadAsset('assets/arcade_location.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    final convdItem = ArcadeLocationModel.fromJson(json).toEntity();

    for (final machine in convdItem.machines) {
      if (machine.id == id) {
        return DataSuccess(machine);
      }
    }

    throw UnimplementedError();
  }

  @override
  Future<DataState> updateArcadeLocation(ArcadeLocationEntity body) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return const DataSuccess(null);
  }

  @override
  Future<DataState> updateArcadeMachine(ArcadeMachineEntity body) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return const DataSuccess(null);
  }

  @override
  Future<DataState> createArcadeMachine(NewArcadeMachineEntity body) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return const DataSuccess(null);
  }

  @override
  Future<DataState> createArcadeLocation(NewArcadeLocationEntity body) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return const DataSuccess(null);
  }

  @override
  Future<DataState> deleteArcadeMachine(ArcadeMachineEntity body) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return const DataSuccess(null);
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }

}