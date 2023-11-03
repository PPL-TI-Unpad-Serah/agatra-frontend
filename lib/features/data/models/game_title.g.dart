// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_title.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameTitleModel _$GameTitleModelFromJson(Map<String, dynamic> json) =>
    GameTitleModel(
      id: json['id'] as int,
      name: json['name'] as String,
      versions: (json['versions'] as List<dynamic>)
          .map((e) =>
              GameTitleVersionCompactModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameTitleModelToJson(GameTitleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'versions': instance.versions,
    };
