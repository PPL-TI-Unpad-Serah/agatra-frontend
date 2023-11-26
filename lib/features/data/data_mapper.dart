import 'package:agatra/features/data/models/arcade_center.dart';
import 'package:agatra/features/data/models/arcade_location.dart';
import 'package:agatra/features/data/models/arcade_location_compact.dart';
import 'package:agatra/features/data/models/arcade_machine.dart';
import 'package:agatra/features/data/models/city.dart';
import 'package:agatra/features/data/models/form/new_arcade_center_body.dart';
import 'package:agatra/features/data/models/game_title.dart';
import 'package:agatra/features/data/models/game_title_compact.dart';
import 'package:agatra/features/data/models/game_title_version.dart';
import 'package:agatra/features/data/models/game_title_version_compact.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/arcade_location.dart';
import 'package:agatra/features/domain/entities/arcade_location_compact.dart';
import 'package:agatra/features/domain/entities/arcade_machine.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_center.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/features/domain/entities/game_title_version_compact.dart';

extension GameTitleVersionCompactModelToEntity on GameTitleVersionCompactModel {
  GameTitleVersionCompactEntity toEntity() {
    return GameTitleVersionCompactEntity(
      id: id,
      name: name,
      info: info,
    );
  }
}

extension GameTitleVersionModelToEntity on GameTitleVersionModel {
  GameTitleVersionEntity toEntity() {
    return GameTitleVersionEntity(
      id: id,
      name: name,
      info: info,
      title: title.toEntity(),
    );
  }
}

extension GameTitleModelToCompactEntity on GameTitleCompactModel {
  GameTitleCompactEntity toEntity() {
    return GameTitleCompactEntity(
      id: id,
      name: name,
    );
  }
}

extension GameTitleModelToEntity on GameTitleModel {
  GameTitleEntity toEntity() {
    return GameTitleEntity(
      id: id,
      name: name,
      versions: versions.map((e) => e.toEntity()).toList(),
    );
  }
}

extension CityModelToEntity on CityModel {
  CityEntity toEntity() {
    return CityEntity(
      id: id,
      name: name,
    );
  }
}

extension ArcadeCenterModelToEntity on ArcadeCenterModel {
  ArcadeCenterEntity toEntity() {
    return ArcadeCenterEntity(
      id: id,
      name: name,
      info: info,
    );
  }
}

extension ArcadeLocationCompactModelToEntity on ArcadeLocationCompactModel {
  ArcadeLocationCompactEntity toEntity() {
    return ArcadeLocationCompactEntity(
      id: id,
      name: name,
      games: versions.map((e) => e.toEntity()).toList(),
    );
  }
}

extension NewArcadeCenterEntityToModel on NewArcadeCenterEntity {
  NewArcadeCenterBody toModel() {
    return NewArcadeCenterBody(
      name: name,
      info: info,
    );
  }
}

extension ArcadeLocationModelToEntity on ArcadeLocationModel {
  ArcadeLocationEntity toEntity() {
    return ArcadeLocationEntity(
      id: id,
      name: name,
      gameCenter: arcadeCenter.toEntity(),
      description: description,
      latitude: lat,
      longitude: long,
      machines: arcadeMachines.map((e) => e.toEntity()).toList(),
      city: city.toEntity(),
    );
  }

}

extension ArcadeMachineModelToEntity on ArcadeMachineModel {
  ArcadeMachineEntity toEntity() {
    return ArcadeMachineEntity(
      id: id,
      price: price,
      game: version.toEntity(),
      notes: "",
      machineCount: machineCount
    );
  }
}