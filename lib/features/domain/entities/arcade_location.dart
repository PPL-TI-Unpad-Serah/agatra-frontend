import 'package:agatra/features/domain/entities/arcade_machine.dart';
import 'package:agatra/features/domain/entities/game_center.dart';
import 'package:equatable/equatable.dart';

class ArcadeLocationEntity extends Equatable {
  final int id;
  final String name;
  final GameCenterEntity gameCenter;
  final String description;
  final double latitude;
  final double longitude;
  final List<ArcadeMachineEntity> machines;

  const ArcadeLocationEntity({
    required this.id,
    required this.name,
    required this.gameCenter,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.machines,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    gameCenter,
    description,
    latitude,
    longitude,
    machines,
  ];
}