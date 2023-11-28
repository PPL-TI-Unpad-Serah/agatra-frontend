// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arcade_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArcadeLocationModel _$ArcadeLocationModelFromJson(Map<String, dynamic> json) =>
    ArcadeLocationModel(
      id: json['id'] as int,
      name: json['name'] as String,
      center:
          ArcadeCenterModel.fromJson(json['center'] as Map<String, dynamic>),
      description: json['description'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
      machine: (json['machine'] as List<dynamic>)
          .map((e) => ArcadeMachineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: CityModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArcadeLocationModelToJson(
        ArcadeLocationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'center': instance.center,
      'description': instance.description,
      'lat': instance.lat,
      'long': instance.long,
      'machine': instance.machine,
      'city': instance.city,
    };
