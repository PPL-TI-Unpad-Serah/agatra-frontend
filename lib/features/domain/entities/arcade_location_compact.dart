import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/arcade_machine.dart';
import 'package:equatable/equatable.dart';

// the entity used on arcades list page
class ArcadeLocationCompactEntity extends Equatable {
  final int id;
  final String name;
  final ArcadeCenterEntity arcadeCenter;
  final List<ArcadeMachineEntity> games;

  const ArcadeLocationCompactEntity({
    required this.id,
    required this.name,
    required this.arcadeCenter,
    required this.games,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    games,
  ];
}