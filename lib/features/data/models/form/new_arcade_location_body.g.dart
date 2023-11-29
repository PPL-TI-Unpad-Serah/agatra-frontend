// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_arcade_location_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewArcadeLocationBody _$NewArcadeLocationBodyFromJson(
        Map<String, dynamic> json) =>
    NewArcadeLocationBody(
      name: json['name'] as String,
      description: json['description'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
      centerId: json['center_id'] as int,
      cityId: json['city_id'] as int,
    );

Map<String, dynamic> _$NewArcadeLocationBodyToJson(
        NewArcadeLocationBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'lat': instance.lat,
      'long': instance.long,
      'center_id': instance.centerId,
      'city_id': instance.cityId,
    };
