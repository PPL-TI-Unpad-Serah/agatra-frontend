import 'package:json_annotation/json_annotation.dart';

part 'new_game_title_body.g.dart';

@JsonSerializable()
class NewGameTitleBody {
  final String name;

  const NewGameTitleBody({
    required this.name,
  });

  factory NewGameTitleBody.fromJson(Map<String, dynamic> json) => _$NewGameTitleBodyFromJson(json);
  Map<String, dynamic> toJson() => _$NewGameTitleBodyToJson(this);
}