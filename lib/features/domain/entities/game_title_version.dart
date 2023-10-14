import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:equatable/equatable.dart';

class GameTitleVersionEntity extends Equatable {
  final int id;
  final String name;
  final GameTitleEntity title;
  final String info;

  const GameTitleVersionEntity({
    required this.id,
    required this.name,
    required this.title,
    required this.info,
  });
  
  @override
  List<Object?> get props => [
    id,
    name,
    title,
    info,
  ];
}