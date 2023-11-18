import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_title_version_compact.freezed.dart';

@freezed
class GameTitleVersionCompactEntity with _$GameTitleVersionCompactEntity {
  factory GameTitleVersionCompactEntity({
    required int id,
    required String name,
    required String info,
  }) = _GameTitleVersionCompactEntity;
}