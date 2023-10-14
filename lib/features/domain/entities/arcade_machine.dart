import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:equatable/equatable.dart';

class ArcadeMachineEntity extends Equatable {
  final int id;
  final GameTitleVersionEntity game;
  final int machineCount;
  final int price;
  final String notes;

  const ArcadeMachineEntity({
    required this.id,
    required this.game,
    required this.machineCount,
    required this.price,
    required this.notes,
  });

  @override
  List<Object?> get props => [
    id,
    game,
    machineCount,
    price,
    notes,
  ];
}