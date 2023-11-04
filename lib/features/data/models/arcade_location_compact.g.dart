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
      versions: (json['versions'] as List<dynamic>)
          .map((e) => GameTitleVersionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArcadeLocationCompactModelToJson(
        ArcadeLocationCompactModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'versions': instance.versions,
    };
