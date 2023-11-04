import 'package:agatra/features/data/models/arcade_center.dart';
import 'package:agatra/features/data/models/city.dart';
import 'package:agatra/features/data/models/game_title.dart';
import 'package:agatra/features/data/models/game_title_version_compact.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
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