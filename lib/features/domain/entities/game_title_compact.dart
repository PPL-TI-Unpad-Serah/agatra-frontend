import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_title_compact.freezed.dart';

@freezed
class GameTitleCompactEntity  with _$GameTitleCompactEntity {
  factory GameTitleCompactEntity({
    required int id,
    required String name,
  }) = _GameTitleCompactEntity;
}