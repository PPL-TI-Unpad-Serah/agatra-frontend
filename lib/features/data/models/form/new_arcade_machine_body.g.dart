// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_arcade_machine_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewArcadeMachineBody _$NewArcadeMachineBodyFromJson(
        Map<String, dynamic> json) =>
    NewArcadeMachineBody(
      versionId: json['version_id'] as int,
      locationId: json['location_id'] as int,
      machineCount: json['machine_count'] as int,
      price: json['price'] as int,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$NewArcadeMachineBodyToJson(
        NewArcadeMachineBody instance) =>
    <String, dynamic>{
      'version_id': instance.versionId,
      'location_id': instance.locationId,
      'machine_count': instance.machineCount,
      'price': instance.price,
      'notes': instance.notes,
    };
