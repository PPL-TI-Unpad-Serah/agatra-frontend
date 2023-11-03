// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_title_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameTitleVersionModel _$GameTitleVersionModelFromJson(
        Map<String, dynamic> json) =>
    GameTitleVersionModel(
      id: json['id'] as int,
      name: json['name'] as String,
      title:
          GameTitleCompactModel.fromJson(json['title'] as Map<String, dynamic>),
      info: json['info'] as String,
    );

Map<String, dynamic> _$GameTitleVersionModelToJson(
        GameTitleVersionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'info': instance.info,
    };
