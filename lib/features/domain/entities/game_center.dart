import 'package:equatable/equatable.dart';

class GameCenterEntity extends Equatable {
  final int id;
  final String name;
  final String info;

  const GameCenterEntity({
    required this.id,
    required this.name,
    required this.info,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    info,
  ];
}
