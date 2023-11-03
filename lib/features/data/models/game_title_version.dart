import 'package:agatra/features/data/models/game_title_compact.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_title_version.g.dart';

@JsonSerializable()
class GameTitleVersionModel{
  final int id;
  final String name;
  final GameTitleCompactModel title;
  final String info;

  const GameTitleVersionModel({
    required this.id,
    required this.name,
    required this.title,
    required this.info,
  });

  factory GameTitleVersionModel.fromJson(Map<String, dynamic> json) => _$GameTitleVersionModelFromJson(json);
  Map<String, dynamic> toJson() => _$GameTitleVersionModelToJson(this);
}