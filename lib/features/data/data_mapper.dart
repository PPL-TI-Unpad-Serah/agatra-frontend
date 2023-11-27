import 'package:agatra/features/data/models/arcade_center.dart';
import 'package:agatra/features/data/models/arcade_location.dart';
import 'package:agatra/features/data/models/arcade_location_compact.dart';
import 'package:agatra/features/data/models/arcade_machine.dart';
import 'package:agatra/features/data/models/city.dart';
import 'package:agatra/features/data/models/form/login_body.dart';
import 'package:agatra/features/data/models/form/new_arcade_center_body.dart';
import 'package:agatra/features/data/models/form/register_body.dart';
import 'package:agatra/features/data/models/game_title.dart';
import 'package:agatra/features/data/models/game_title_compact.dart';
import 'package:agatra/features/data/models/game_title_version.dart';
import 'package:agatra/features/data/models/game_title_version_compact.dart';
import 'package:agatra/features/data/models/session.dart';
import 'package:agatra/features/data/models/user.dart';
import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/arcade_location.dart';
import 'package:agatra/features/domain/entities/arcade_location_compact.dart';
import 'package:agatra/features/domain/entities/arcade_machine.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/form/auth_login.dart';
import 'package:agatra/features/domain/entities/form/auth_register.dart';
import 'package:agatra/features/domain/entities/form/new_arcade_center.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_compact.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/features/domain/entities/game_title_version_compact.dart';
import 'package:agatra/features/domain/entities/session.dart';
import 'package:agatra/features/domain/entities/user.dart';

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

extension RegisterBodyEntityToModel on AuthRegister {
  RegisterBodyModel toModel() {
    return RegisterBodyModel(
      username: username,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
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

extension UserModelToEntity on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      username: username,
      role: UserRole.fromName(role),
    );
  }
}

extension SessionModelToEntity on SessionModel {
  SessionEntity toEntity() {
    return SessionEntity(
      token: token,
      user: user.toEntity(),
    );
  }
}

extension LoginFormEntityToModel on AuthLogin {
  LoginBodyModel toModel() {
    return LoginBodyModel(
      username: username,
      password: password,
    );
  }
}