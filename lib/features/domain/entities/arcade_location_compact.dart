import 'package:equatable/equatable.dart';

// the entity used on arcades list page
class ArcadeLocationCompactEntity extends Equatable {
  final int id;
  final String name;
  final List<String> games;

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