import 'package:equatable/equatable.dart';

class GameTitleVersionCompactEntity extends Equatable {
  final int id;
  final String name;
  final String info;

  const GameTitleVersionCompactEntity({
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