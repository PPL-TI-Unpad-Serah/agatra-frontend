import 'package:json_annotation/json_annotation.dart';

part 'new_arcade_center_body.g.dart';

@JsonSerializable()
class NewArcadeCenterBody {
  final String name;
  final String info;

  const NewArcadeCenterBody({
    required this.name,
    required this.info,
  });

  factory NewArcadeCenterBody.fromJson(Map<String, dynamic> json) => _$NewArcadeCenterBodyFromJson(json);
  Map<String, dynamic> toJson() => _$NewArcadeCenterBodyToJson(this);
}