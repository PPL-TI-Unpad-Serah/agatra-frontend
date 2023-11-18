import 'package:agatra/features/domain/entities/game_title_version_compact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_title.freezed.dart';

@freezed
class GameTitleEntity with _$GameTitleEntity {
  factory GameTitleEntity({
    required int id,
    required String name,
    required List<GameTitleVersionCompactEntity> versions,
  }) = _GameTitleEntity;
}