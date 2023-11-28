import 'package:agatra/features/data/models/arcade_center.dart';
import 'package:agatra/features/data/models/arcade_machine.dart';
import 'package:json_annotation/json_annotation.dart';

part 'arcade_location_compact.g.dart';

@JsonSerializable()
class ArcadeLocationCompactModel {
  final int id;
  final String name;
  final ArcadeCenterModel center;
  final List<ArcadeMachineModel> machine;

  const ArcadeLocationCompactModel({
    required this.id,
    required this.name,
    required this.center,
    required this.machine,
  });

  factory ArcadeLocationCompactModel.fromJson(Map<String, dynamic> json) => _$ArcadeLocationCompactModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArcadeLocationCompactModelToJson(this);
}