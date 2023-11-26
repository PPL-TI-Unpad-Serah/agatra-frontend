
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_arcade_machine.freezed.dart';

@freezed
class NewArcadeMachineEntity with _$NewArcadeMachineEntity {
  factory NewArcadeMachineEntity({
    required int arcadeLocationId,
    GameTitleVersionEntity? game,
    int? machineCount,
    int? price,
    String? notes,
  }) = _NewArcadeMachineEntity;
}