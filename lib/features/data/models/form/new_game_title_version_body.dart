import 'package:json_annotation/json_annotation.dart';

part 'new_game_title_version_body.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NewGameTitleVersionBody {
  final String name;
  final String info;
  final int titleId;


  const NewGameTitleVersionBody({
    required this.name,
    required this.info,
    required this.titleId,
  });

  factory NewGameTitleVersionBody.fromJson(Map<String, dynamic> json) => _$NewGameTitleVersionBodyFromJson(json);
  Map<String, dynamic> toJson() => _$NewGameTitleVersionBodyToJson(this);
}