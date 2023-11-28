// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_game_title_version_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewGameTitleVersionBody _$NewGameTitleVersionBodyFromJson(
        Map<String, dynamic> json) =>
    NewGameTitleVersionBody(
      name: json['name'] as String,
      info: json['info'] as String,
      titleId: json['title_id'] as int,
    );

Map<String, dynamic> _$NewGameTitleVersionBodyToJson(
        NewGameTitleVersionBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'info': instance.info,
      'title_id': instance.titleId,
    };
