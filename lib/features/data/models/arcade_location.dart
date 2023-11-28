import 'package:agatra/features/data/models/arcade_center.dart';
import 'package:agatra/features/data/models/arcade_machine.dart';
import 'package:agatra/features/data/models/city.dart';
import 'package:json_annotation/json_annotation.dart';

part 'arcade_location.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ArcadeLocationModel {
  final int id;
  final String name;
  final ArcadeCenterModel arcadeCenter;
  final String description;
  final double lat;
  final double long;
  final List<ArcadeMachineModel> machine;
  final CityModel city;

  const ArcadeLocationModel({
    required this.id,
    required this.name,
    required this.arcadeCenter,
    required this.description,
    required this.lat,
    required this.long,
    required this.machine,
    required this.city,
  });

  factory ArcadeLocationModel.fromJson(Map<String, dynamic> json) => _$ArcadeLocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArcadeLocationModelToJson(this);
}