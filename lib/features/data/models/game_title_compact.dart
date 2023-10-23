import 'package:json_annotation/json_annotation.dart';

part 'game_title_compact.g.dart';

@JsonSerializable()
class GameTitleCompactModel {
  final int id;
  final String name;

  const GameTitleCompactModel({
    required this.id,
    required this.name,
  });

    factory GameTitleCompactModel.fromJson(Map<String, dynamic> json) => _$GameTitleCompactModelFromJson(json);
  Map<String, dynamic> toJson() => _$GameTitleCompactModelToJson(this);
}