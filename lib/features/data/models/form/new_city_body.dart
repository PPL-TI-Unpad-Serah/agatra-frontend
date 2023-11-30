import 'package:json_annotation/json_annotation.dart';

part 'new_city_body.g.dart';

@JsonSerializable()
class NewCityBody {
  final String name;

  const NewCityBody({
    required this.name,
  });

  factory NewCityBody.fromJson(Map<String, dynamic> json) => _$NewCityBodyFromJson(json);
  Map<String, dynamic> toJson() => _$NewCityBodyToJson(this);
}