import 'package:agatra/features/data/models/game_title_version_compact.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_title.g.dart';

@JsonSerializable()
class GameTitleModel{
  final int id;
  final String name;
  final List<GameTitleVersionCompactModel> versions;

  const GameTitleModel({
    required this.id,
    required this.name,
    required this.versions,
  });

  factory GameTitleModel.fromJson(Map<String, dynamic> json) => _$GameTitleModelFromJson(json);
  Map<String, dynamic> toJson() => _$GameTitleModelToJson(this);
}