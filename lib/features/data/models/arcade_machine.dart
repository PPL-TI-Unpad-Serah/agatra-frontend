import 'package:agatra/features/data/models/game_title_version.dart';
import 'package:json_annotation/json_annotation.dart';

part 'arcade_machine.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ArcadeMachineModel {
  final int id;
  final GameTitleVersionModel version;
  final int machineCount;
  final int price;

  const ArcadeMachineModel({
    required this.id,
    required this.version,
    required this.machineCount,
    required this.price,
  });

  factory ArcadeMachineModel.fromJson(Map<String, dynamic> json) => _$ArcadeMachineModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArcadeMachineModelToJson(this);
}