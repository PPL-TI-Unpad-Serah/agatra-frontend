import 'package:json_annotation/json_annotation.dart';

part 'arcade_center.g.dart';

@JsonSerializable()
class ArcadeCenterModel {
  final int id;
  final String name;
  final String info;

  const ArcadeCenterModel({
    required this.id,
    required this.name,
    required this.info,
  });

  factory ArcadeCenterModel.fromJson(Map<String, dynamic> json) => _$ArcadeCenterModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArcadeCenterModelToJson(this);
}