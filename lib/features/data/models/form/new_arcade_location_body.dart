import 'package:json_annotation/json_annotation.dart';

part 'new_arcade_location_body.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NewArcadeLocationBody {
  final String name;
  final String description;
  final double lat;
  final double long;
  final int centerId;
  final int cityId;

  const NewArcadeLocationBody({
    required this.name,
    required this.description,
    required this.lat,
    required this.long,
    required this.centerId,
    required this.cityId,
  });

  factory NewArcadeLocationBody.fromJson(Map<String, dynamic> json) => _$NewArcadeLocationBodyFromJson(json);
  Map<String, dynamic> toJson() => _$NewArcadeLocationBodyToJson(this);
}