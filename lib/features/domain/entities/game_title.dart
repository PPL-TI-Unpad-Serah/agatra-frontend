import 'package:agatra/features/domain/entities/game_title_version_compact.dart';
import 'package:equatable/equatable.dart';

class GameTitleEntity extends Equatable {
  final int id;
  final String name;
  final List<GameTitleVersionCompactEntity> versions;

  const GameTitleEntity({
    required this.id,
    required this.name,
    required this.versions,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    versions,
  ];
}