import 'package:agatra/features/data/models/game_title_version.dart';
import 'package:json_annotation/json_annotation.dart';

part 'arcade_location_compact.g.dart';

@JsonSerializable()
class ArcadeLocationCompactModel {
  final int id;
  final String name;
  final List<GameTitleVersionModel> versions;

  const ArcadeLocationCompactModel({
    required this.id,
    required this.name,
    required this.versions,
  });

  factory ArcadeLocationCompactModel.fromJson(Map<String, dynamic> json) => _$ArcadeLocationCompactModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArcadeLocationCompactModelToJson(this);
}