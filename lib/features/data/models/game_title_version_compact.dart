import 'package:json_annotation/json_annotation.dart';

part 'game_title_version_compact.g.dart';

@JsonSerializable()
class GameTitleVersionCompactModel{
  final int id;
  final String name;
  final String info;

  const GameTitleVersionCompactModel({
    required this.id,
    required this.name,
    required this.info,
  });

  factory GameTitleVersionCompactModel.fromJson(Map<String, dynamic> json) => _$GameTitleVersionCompactModelFromJson(json);
  Map<String, dynamic> toJson() => _$GameTitleVersionCompactModelToJson(this);
}