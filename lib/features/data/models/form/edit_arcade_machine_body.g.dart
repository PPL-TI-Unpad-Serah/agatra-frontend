// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_arcade_machine_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditArcadeMachineBody _$EditArcadeMachineBodyFromJson(
        Map<String, dynamic> json) =>
    EditArcadeMachineBody(
      versionId: json['version_id'] as int,
      machineCount: json['machine_count'] as int,
      price: json['price'] as int,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$EditArcadeMachineBodyToJson(
        EditArcadeMachineBody instance) =>
    <String, dynamic>{
      'version_id': instance.versionId,
      'machine_count': instance.machineCount,
      'price': instance.price,
      'notes': instance.notes,
    };
