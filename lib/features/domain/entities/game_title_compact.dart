import 'package:equatable/equatable.dart';

class GameTitleCompactEntity extends Equatable {
  final int id;
  final String name;

  const GameTitleCompactEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [
    id,
    name,
  ];
}