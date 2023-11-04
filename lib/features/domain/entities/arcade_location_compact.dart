import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:equatable/equatable.dart';

// the entity used on arcades list page
class ArcadeLocationCompactEntity extends Equatable {
  final int id;
  final String name;
  final List<GameTitleVersionEntity> games;

  const ArcadeLocationCompactEntity({
    required this.id,
    required this.name,
    required this.games,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    games,
  ];
}