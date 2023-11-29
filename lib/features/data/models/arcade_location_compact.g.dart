// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arcade_location_compact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArcadeLocationCompactModel _$ArcadeLocationCompactModelFromJson(
        Map<String, dynamic> json) =>
    ArcadeLocationCompactModel(
      id: json['id'] as int,
      name: json['name'] as String,
      center:
          ArcadeCenterModel.fromJson(json['center'] as Map<String, dynamic>),
      machine: (json['machine'] as List<dynamic>)
          .map((e) => ArcadeMachineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArcadeLocationCompactModelToJson(
        ArcadeLocationCompactModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'center': instance.center,
      'machine': instance.machine,
    };
