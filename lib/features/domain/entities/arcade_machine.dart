import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'arcade_machine.freezed.dart';

@freezed
class ArcadeMachineEntity with _$ArcadeMachineEntity {
  factory ArcadeMachineEntity({
    required int id,
    required GameTitleVersionEntity game,
    required int machineCount,
    required int price,
    required String notes,
  }) = _ArcadeMachineEntity;
}