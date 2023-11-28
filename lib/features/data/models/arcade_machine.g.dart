// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arcade_machine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArcadeMachineModel _$ArcadeMachineModelFromJson(Map<String, dynamic> json) =>
    ArcadeMachineModel(
      id: json['id'] as int,
      version: GameTitleVersionModel.fromJson(
          json['version'] as Map<String, dynamic>),
      machineCount: json['machine_count'] as int,
      price: json['price'] as int,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$ArcadeMachineModelToJson(ArcadeMachineModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'machine_count': instance.machineCount,
      'price': instance.price,
      'notes': instance.notes,
    };
